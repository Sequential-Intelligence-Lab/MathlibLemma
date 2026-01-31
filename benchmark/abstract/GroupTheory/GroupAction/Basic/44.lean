import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_subset_normalizer
    [Group G] [Mul G] [MulAction G α] (s : α) :
    MulAction.stabilizer G s ≤ Subgroup.normalizer (MulAction.stabilizer G s) := by
  sorry