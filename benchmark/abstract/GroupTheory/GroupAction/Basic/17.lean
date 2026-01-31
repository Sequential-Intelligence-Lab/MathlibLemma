import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.finite_orbit_of_finite_type
    [Group G] [MulAction G α] [Finite G] (a : α) :
    (MulAction.orbit G a).Finite := by
  sorry
