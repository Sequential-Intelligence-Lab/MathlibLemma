import Mathlib

variable {M α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

lemma MulAction.map_fixedPoints
    [Monoid M] [MulAction M α] [MulAction M β]
    (f : α → β) (hf : ∀ (g : M) (a : α), f (g • a) = g • f a) :
    f '' MulAction.fixedPoints M α ⊆
      MulAction.fixedPoints M β := by
  sorry