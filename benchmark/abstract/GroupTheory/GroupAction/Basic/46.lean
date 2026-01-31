import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_union
    [Group G] [MulAction G α] [MulAction G (Set α)] (s t : Set α) :
    MulAction.stabilizer G (s ∪ t) ≤
      MulAction.stabilizer G s ⊓ MulAction.stabilizer G t := by
  sorry