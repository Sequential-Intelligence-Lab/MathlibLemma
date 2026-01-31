import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.mem_fixedPoints_of_orbit_eq_singleton [Monoid M] [MulAction M α] {a : α}
    (h : MulAction.orbit M a = {a}) :
    a ∈ MulAction.fixedPoints M α := by
  sorry
