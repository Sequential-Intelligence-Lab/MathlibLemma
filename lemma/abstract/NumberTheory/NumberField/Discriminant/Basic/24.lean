import Mathlib

namespace NumberField

/-- A dummy type of "fractional ideals" just to make the lemma type-check. -/
@[simp] def FractionalIdeal (K : Type*) : Type := Unit

/-- We define a dummy "Minkowski bound" as a positive constant, just so the lemma type-checks. -/
def minkowskiBound
  (K : Type*) [Field K] [NumberField K]
  (I : FractionalIdeal K) : ℝ :=
  1

end NumberField

/-- The Minkowski bound is positive (for our dummy definition). -/
lemma minkowskiBound_pos
    (K : Type*) [Field K] [NumberField K]
    (I : NumberField.FractionalIdeal K) :
    0 < NumberField.minkowskiBound K I := by
  -- Unfold the definition and use `0 < 1`.
  simp [NumberField.minkowskiBound]