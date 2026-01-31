import Mathlib

lemma integral_cot (a b : ℝ) (h : ∀ x ∈ Set.Icc a b, Real.sin x ≠ 0) :
    ∫ x in a..b, Real.cot x = Real.log |Real.sin b| - Real.log |Real.sin a| := by
  sorry
