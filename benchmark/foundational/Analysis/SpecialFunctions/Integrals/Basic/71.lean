import Mathlib

lemma integral_tan (a b : ℝ) (h : ∀ x ∈ Set.Icc a b, Real.cos x ≠ 0) :
    ∫ x in a..b, Real.tan x = -Real.log |Real.cos b| + Real.log |Real.cos a| := by
  sorry
