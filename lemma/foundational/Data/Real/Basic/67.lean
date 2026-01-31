import Mathlib

open Real

lemma cauchy_max (x y : ℝ) :
    Real.cauchy (max x y) = if h : x ≤ y then Real.cauchy y else Real.cauchy x := by
  by_cases h : x ≤ y
  · -- Case x ≤ y
    -- max x y = y, and the if reduces to Real.cauchy y
    simp [Real.cauchy, h, max_eq_right h]
  · -- Case ¬ x ≤ y, so y ≤ x and max x y = x
    have h' : y ≤ x := le_of_lt (lt_of_not_ge h)
    simp [Real.cauchy, h, max_eq_left h']