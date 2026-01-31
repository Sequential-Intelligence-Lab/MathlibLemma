import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma AddAction.fixedPoints_prod
    [AddMonoid G] [AddAction G α] [AddAction G β] :
    AddAction.fixedPoints G (α × β) =
      AddAction.fixedPoints G α ×ˢ AddAction.fixedPoints G β := by
  sorry
