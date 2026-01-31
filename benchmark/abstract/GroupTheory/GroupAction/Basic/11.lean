import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_eq_singleton_of_mem_fixedPoints [Monoid M] [MulAction M α] {a : α}
    (h : a ∈ MulAction.fixedPoints M α) :
    MulAction.orbit M a = {a} := by
  sorry
