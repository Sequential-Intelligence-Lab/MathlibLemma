import Mathlib

/-- A lemma asserting that any number field with discriminant `1` is isomorphic to `ℚ`. -/
lemma isRat_of_discr_eq_one
    (K : Type*) [Field K] [NumberField K]
    (h : NumberField.discr K = 1) :
    Nonempty (K ≃ₐ[ℚ] ℚ) := by
  sorry
