import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_mono
    [Group G] [MulAction G α] {a b : α}
    (h : MulAction.orbit G a ⊆ MulAction.orbit G b) :
    MulAction.stabilizer G b ≤ MulAction.stabilizer G a := by
  sorry
