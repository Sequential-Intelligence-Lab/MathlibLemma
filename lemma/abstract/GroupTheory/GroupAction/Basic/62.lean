import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat



variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma AddAction.fixedPoints_prod
    [AddMonoid G] [AddAction G α] [AddAction G β] :
    AddAction.fixedPoints G (α × β) =
      AddAction.fixedPoints G α ×ˢ AddAction.fixedPoints G β := by
  ext ⟨a, b⟩
  simp only [Set.mem_setOf_eq, Set.mem_prod]
  constructor
  · -- Assume (a, b) is fixed under the product action
    intro h
    have h1 : ∀ g : G, g +ᵥ (a : α) = a := by
      intro g
      have h2 := h g
      have eq1 : g +ᵥ (a, b) = (g +ᵥ (a : α), g +ᵥ (b : β)) := by
        simp
      rw [eq1] at h2
      simp [Prod.ext_iff] at h2 ⊢
      all_goals try tauto
    have h2 : ∀ g : G, g +ᵥ (b : β) = b := by
      intro g
      have h3 := h g
      have eq1 : g +ᵥ (a, b) = (g +ᵥ (a : α), g +ᵥ (b : β)) := by
        simp
      rw [eq1] at h3
      simp [Prod.ext_iff] at h3 ⊢
      all_goals try tauto
    have hx1 : a ∈ AddAction.fixedPoints G α := by
      simpa using h1
    have hx2 : b ∈ AddAction.fixedPoints G β := by
      simpa using h2
    exact ⟨hx1, hx2⟩
  · -- Assume (a, b) is in the product of fixed points sets
    rintro ⟨hx1, hx2⟩
    have h1 : ∀ g : G, g +ᵥ (a : α) = a := by
      simpa using hx1
    have h2 : ∀ g : G, g +ᵥ (b : β) = b := by
      simpa using hx2
    intro g
    have eq1 : g +ᵥ (a, b) = (g +ᵥ (a : α), g +ᵥ (b : β)) := by
      simp
    rw [eq1]
    have eq2 : g +ᵥ (a : α) = a := h1 g
    have eq3 : g +ᵥ (b : β) = b := h2 g
    simp [eq2, eq3]