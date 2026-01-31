import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma isOpen_sigma_mk {ι : Type*} [TopologicalSpace ι] {X : ι → Type*}
    [∀ i, TopologicalSpace (X i)] {s : Set ι} {t : ∀ i, Set (X i)}
    (hs : IsOpen s) (ht : ∀ i, IsOpen (t i)) :
    IsOpen {p : Sigma X | p.1 ∈ s ∧ p.2 ∈ t p.1} := by
  apply isOpen_sigma_iff.mpr
  intro i
  have h1 : (Sigma.mk i : X i → Σ (j : ι), X j) ⁻¹' {p : Sigma X | p.1 ∈ s ∧ p.2 ∈ t p.1} = 
    {x : X i | i ∈ s ∧ x ∈ t i} := by
    ext x
    simp
  rw [h1]
  by_cases h : i ∈ s
  · -- If i ∈ s, then the set is t i, which is open
    have h2 : {x : X i | i ∈ s ∧ x ∈ t i} = t i := by
      ext x
      simp [h]
    rw [h2]
    apply ht
  · -- If i ∉ s, then the set is empty
    have h2 : {x : X i | i ∈ s ∧ x ∈ t i} = (∅ : Set (X i)) := by
      ext x
      simp [show i ∉ s by simpa using h]
    rw [h2]
    simp