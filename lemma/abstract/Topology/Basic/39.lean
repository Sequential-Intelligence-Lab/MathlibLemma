import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

theorem isClosed_prod {X₁ X₂ : Type*} [TopologicalSpace X₁] [TopologicalSpace X₂]
    {s : Set X₁} {t : Set X₂}
    (hs : IsClosed s) (ht : IsClosed t) :
    IsClosed (s ×ˢ t : Set (X₁ × X₂)) := by
  have h1 : IsOpen (s ×ˢ t : Set (X₁ × X₂))ᶜ := by
    have h1 : (s ×ˢ t : Set (X₁ × X₂)) = Set.prod s t := by rfl
    rw [h1]
    have h3 : (Set.prod s t : Set (X₁ × X₂))ᶜ = (Set.prod (sᶜ) (Set.univ : Set X₂)) ∪ (Set.prod (Set.univ : Set X₁) (tᶜ)) := by
      ext ⟨x, y⟩
      simp only [Set.mem_prod, Set.mem_compl_iff, Set.mem_union]
      constructor
      · -- Assume (x, y) ∉ s × t, prove (x, y) ∈ sᶜ × univ ∪ univ × tᶜ
        intro h
        by_contra h'
        push_neg at h'
        have h4 : x ∈ s := by
          have h5 : x ∉ sᶜ := by
            tauto
          simpa using h5
        have h6 : y ∈ t := by
          have h7 : y ∉ tᶜ := by
            tauto
          simpa using h7
        have h8 : (x, y) ∈ Set.prod s t := by
          exact ⟨h4, h6⟩
        tauto
      · -- Assume (x, y) ∈ sᶜ × univ ∪ univ × tᶜ, prove (x, y) ∉ s × t
        rintro (h | h)
        · -- Case (x, y) ∈ sᶜ × univ
          have h4 : x ∈ sᶜ := by
            have h5 : (x, y) ∈ Set.prod (sᶜ) (Set.univ : Set X₂) := h
            exact h5.1
          intro h
          have h6 : x ∈ s := by
            have h7 : (x, y) ∈ Set.prod s t := h
            exact h7.1
          have h7 : x ∉ s := by
            simpa using h4
          contradiction
        · -- Case (x, y) ∈ univ × tᶜ
          have h8 : y ∈ tᶜ := by
            have h9 : (x, y) ∈ Set.prod (Set.univ : Set X₁) (tᶜ) := h
            exact h9.2
          intro h
          have h10 : y ∈ t := by
            have h11 : (x, y) ∈ Set.prod s t := h
            exact h11.2
          have h11 : y ∉ t := by
            simpa using h8
          contradiction
    rw [h3]
    have h4 : IsOpen (sᶜ : Set X₁) := by
      exact hs.isOpen_compl
    have h5 : IsOpen (tᶜ : Set X₂) := by
      exact ht.isOpen_compl
    have h6 : IsOpen (Set.prod (sᶜ : Set X₁) (Set.univ : Set X₂) : Set (X₁ × X₂)) := by
      apply IsOpen.prod
      · exact h4
      · exact isOpen_univ
    have h7 : IsOpen (Set.prod (Set.univ : Set X₁) (tᶜ : Set X₂) : Set (X₁ × X₂)) := by
      apply IsOpen.prod
      · exact isOpen_univ
      · exact h5
    apply IsOpen.union
    · exact h6
    · exact h7
  simpa using h1