import Mathlib

universe u

/-- A version of `abs_discr_gt_two` for a uniform lower bound on discriminants of all
nontrivial number fields. -/
lemma exists_universal_discr_lower_bound :
    ∃ C : ℝ, ∀ (K : Type u) [Field K] [NumberField K]
      [FiniteDimensional ℚ K],
      1 < Module.finrank ℚ K →
        C ≤ |NumberField.discr K| := by
  sorry