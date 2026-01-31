import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_subset_iff [Monoid M] [MulAction M α] (S : Set α) :
    MulAction.fixedPoints M α ⊆ S ↔
      ∀ a ∈ MulAction.fixedPoints M α, a ∈ S := by
  sorry
