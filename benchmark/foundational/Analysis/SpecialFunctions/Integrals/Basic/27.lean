import Mathlib

lemma integral_sin_add (a b c : ℝ) :
    ∫ x in a..b, Real.sin (x + c) = Real.cos (a + c) - Real.cos (b + c) := by
  sorry
