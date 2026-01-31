import Mathlib

variable {G α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_congr
    [Group G] [MulAction G α] [MulAction G β]
    (f : α ≃ β) (hf : ∀ (g : G) (a : α), f (g • a) = g • f a) (a : α) :
    MulAction.stabilizer G (f a) = MulAction.stabilizer G a := by
  sorry