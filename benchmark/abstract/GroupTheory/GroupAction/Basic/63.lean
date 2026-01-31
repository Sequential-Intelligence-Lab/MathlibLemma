import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma AddAction.stabilizer_prod
    [AddGroup G] [AddAction G α] [AddAction G β] (x : α × β) :
    AddAction.stabilizer G x =
      AddAction.stabilizer G x.1 ⊓ AddAction.stabilizer G x.2 := by
  sorry
