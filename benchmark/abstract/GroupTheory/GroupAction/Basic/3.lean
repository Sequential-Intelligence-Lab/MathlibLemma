import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_disjoint_iff [Group G] [MulAction G α] {a b : α} :
    Disjoint (MulAction.orbit G a) (MulAction.orbit G b) ↔
      ¬ MulAction.orbit G a = MulAction.orbit G b := by
  sorry
