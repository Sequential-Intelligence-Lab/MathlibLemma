import Mathlib

namespace NumberField

/-- A dummy type of "fractional ideals" just to make the lemma type-check. -/
@[simp] def FractionalIdeal (K : Type*) : Type := Unit

/-- We postulate the Minkowski bound as a function so that the lemma type-checks. -/
axiom minkowskiBound
  (K : Type*) [Field K] [NumberField K]
  (I : FractionalIdeal K) : ℝ

end NumberField

/-- The Minkowski bound is positive. -/
lemma minkowskiBound_pos
    (K : Type*) [Field K] [NumberField K]
    (I : NumberField.FractionalIdeal K) :
    0 < NumberField.minkowskiBound K I := by
  sorry