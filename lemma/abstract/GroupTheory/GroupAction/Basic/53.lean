import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.preimage_fixedPoints
    [Monoid M] [MulAction M α] [MulAction M β]
    (f : α → β) (hf : ∀ (g : M) (a : α), f (g • a) = g • f a) :
    MulAction.fixedPoints M α ⊆
      {a : α | f a ∈ MulAction.fixedPoints M β} := by
  intro a ha
  -- We want to show that `f a` is a fixed point of the action on β
  change f a ∈ MulAction.fixedPoints M β
  -- Unfold fixedPoints: it is the set of points fixed by all g : M
  change ∀ g : M, g • f a = f a
  intro g
  -- From `ha` we know `a` is fixed by all `g`
  have hfix : ∀ g : M, g • a = a := ha
  -- Equivariance of `f`
  have hfa : f (g • a) = g • f a := hf g a
  calc
    g • f a = f (g • a) := by simpa [hfa] using hfa.symm
    _       = f a       := by simpa [hfix g]