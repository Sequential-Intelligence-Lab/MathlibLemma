import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_prod_eq_prod
    [Monoid M] [MulAction M α] [MulAction M β] (a : α) (b : β) :
    MulAction.orbit M (a, b) ⊆
      (MulAction.orbit M a) ×ˢ (MulAction.orbit M b) := by
  sorry
