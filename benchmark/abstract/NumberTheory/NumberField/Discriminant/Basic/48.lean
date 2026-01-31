import Mathlib

/-- The discriminant of a cyclotomic field `ℚ(ζ_n)` is bounded below by a function of `n`. -/
lemma discr_cyclotomic_ge (n : ℕ) (hn : 2 ≤ n) :
    (|NumberField.discr (CyclotomicField n ℚ)| : ℝ) ≥ Real.log n := by
  sorry