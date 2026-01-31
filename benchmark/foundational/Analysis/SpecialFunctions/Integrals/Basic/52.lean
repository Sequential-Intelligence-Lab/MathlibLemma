import Mathlib

lemma integral_piecewise_two (a b c : ℝ) :
    ∫ x in a..b, (if x ≤ c then (1 : ℝ) else 0) =
      max (min b c) a - a := by
  sorry
