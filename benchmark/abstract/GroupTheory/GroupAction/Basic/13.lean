import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_nontrivial_iff [Group G] [MulAction G α] {a : α} :
    Nontrivial (MulAction.stabilizer G a) ↔
      ∃ g : G, g ≠ 1 ∧ g • a = a := by
  sorry
