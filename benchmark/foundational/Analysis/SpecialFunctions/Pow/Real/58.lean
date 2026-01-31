import Mathlib

open Real

lemma Real.log_rpow_base (a x : ℝ) (ha : 0 < a) (ha1 : a ≠ 1) :
    Real.logb a (a ^ x) = x := by
  sorry