import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_eq_univ_of_finite
    [Group G] [MulAction G α] [Finite α] (a : α) :
    MulAction.orbit G a = Set.univ ↔ IsPretransitive G α := by
  sorry
