import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.nontrivial_of_two_orbits
    [Group G] [MulAction G α] {a b : α}
    (h : a ∉ MulAction.orbit G b) :
    Nontrivial α := by
  sorry

/-! ### Miscellaneous -/
