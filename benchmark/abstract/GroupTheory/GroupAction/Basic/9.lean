import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_eq_singleton_iff [Monoid M] [MulAction M α] {a : α} :
    MulAction.orbit M a = {a} ↔ a ∈ MulAction.fixedPoints M α := by
  sorry
