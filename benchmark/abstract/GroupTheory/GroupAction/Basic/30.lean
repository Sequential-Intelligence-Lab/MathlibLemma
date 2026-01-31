import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_prod
    [Group G] [MulAction G α] [MulAction G β] (x : α × β) :
    MulAction.stabilizer G x =
      MulAction.stabilizer G x.1 ⊓ MulAction.stabilizer G x.2 := by
  sorry
