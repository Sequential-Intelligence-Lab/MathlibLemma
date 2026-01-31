import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbitRel_class_of_orbit
    [Group G] [MulAction G α] (a : α) :
    {b | MulAction.orbitRel G α a b} =
      MulAction.orbit G a := by
  sorry

/-! ### Stabilizers and subgroups -/
