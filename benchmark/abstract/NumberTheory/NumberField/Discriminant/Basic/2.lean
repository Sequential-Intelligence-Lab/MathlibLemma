import Mathlib

open scoped NumberField

/-- If a number field `K` has degree `1`, then its discriminant is `1`. -/
lemma discr_eq_one_of_deg_eq_one
    (K : Type*) [Field K] [NumberField K] (d : ℕ)
    (h : d = 1) :
    NumberField.discr K = 1 := by
  sorry