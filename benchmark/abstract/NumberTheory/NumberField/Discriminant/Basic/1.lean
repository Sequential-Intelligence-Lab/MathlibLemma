import Mathlib

/-- The discriminant of any number field is nonzero, stated without an explicit `[NumberField]`. -/
lemma discr_ne_zero_of_numberField (K : Type*) [Field K] [NumberField K] :
    (NumberField.discr K) ≠ 0 := by
  sorry
