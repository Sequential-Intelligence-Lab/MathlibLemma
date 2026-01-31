import Mathlib

lemma integral_arctan (a b : ℝ) :
    ∫ x in a..b, Real.arctan x = b * Real.arctan b - a * Real.arctan a -
      (1 / 2) * (Real.log (1 + b^2) - Real.log (1 + a^2)) := by
  sorry
