import Mathlib

open Real

lemma cauchy_max (x y : ℝ) :
    Real.cauchy (max x y) = if h : x ≤ y then Real.cauchy y else Real.cauchy x := by
  sorry