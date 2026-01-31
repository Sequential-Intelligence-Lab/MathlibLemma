import Mathlib

lemma Real.integral_arith_mean_le_rpow_mean
    {μ : MeasureTheory.Measure ℝ} {p : ℝ} (hp1 : 1 ≤ p)
    {f : ℝ → ℝ} (hf : Measurable f)
    (hf0 : ∀ᵐ x ∂μ, 0 ≤ f x) (hprob : μ Set.univ = 1) :
    ∫ x, f x ∂μ ≤ (∫ x, (f x) ^ p ∂μ) ^ (1 / p) := by
  sorry
