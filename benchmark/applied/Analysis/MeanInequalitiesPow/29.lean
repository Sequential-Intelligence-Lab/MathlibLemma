import Mathlib

open MeasureTheory

lemma Real.integral_add_rpow_le_rpow_add
    {α : Type _} [MeasurableSpace α]
    {μ : Measure α} {p : ℝ} (hp1 : 1 ≤ p)
    {f g : α → ℝ} (hf : Measurable f) (hg : Measurable g)
    (hf0 : ∀ᵐ x ∂μ, 0 ≤ f x) (hg0 : ∀ᵐ x ∂μ, 0 ≤ g x) :
    ∫ x, (f x) ^ p + (g x) ^ p ∂μ ≤
      ∫ x, (f x + g x) ^ p ∂μ := by
  sorry