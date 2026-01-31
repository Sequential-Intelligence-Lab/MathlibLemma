import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.preimage_fixedPoints
    [Monoid M] [MulAction M α] [MulAction M β]
    (f : α → β) (hf : ∀ (g : M) (a : α), f (g • a) = g • f a) :
    MulAction.fixedPoints M α ⊆
      {a : α | f a ∈ MulAction.fixedPoints M β} := by
  sorry