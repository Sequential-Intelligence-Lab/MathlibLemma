import Mathlib

lemma integral_cos_add (a b c : ℝ) :
    ∫ x in a..b, Real.cos (x + c) = Real.sin (b + c) - Real.sin (a + c) := by
  sorry
