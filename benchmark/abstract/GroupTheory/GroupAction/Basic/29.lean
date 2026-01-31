import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_prod
    [Monoid M] [MulAction M α] [MulAction M β] :
    MulAction.fixedPoints M (α × β) =
      MulAction.fixedPoints M α ×ˢ MulAction.fixedPoints M β := by
  sorry
