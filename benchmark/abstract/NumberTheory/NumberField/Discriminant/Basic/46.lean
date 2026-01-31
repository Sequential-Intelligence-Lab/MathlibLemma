import Mathlib

open scoped BigOperators

/-- A strengthening of `abs_discr_gt_two` for a nontrivial number field of degree at least `3`. -/
lemma abs_discr_gt_four_of_finrank_ge_three
    (K : Type*) [Field K] [NumberField K]
    (h : 3 ≤ Module.finrank ℚ K) :
    4 < |NumberField.discr K| := by
  sorry