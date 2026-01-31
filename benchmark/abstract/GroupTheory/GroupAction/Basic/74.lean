import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma smul_eq_smul_of_stabilizer_le
    [Group G] [Mul α] [MulAction G α]
    {g h : G} {a : α}
    (H : MulAction.stabilizer G a ≤ ⊥)
    (hg : g • a = a) (hh : h • a = a) :
    g = h := by
  sorry
