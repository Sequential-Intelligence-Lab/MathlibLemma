import Mathlib

open MeasureTheory

lemma condExp_bound_integral_abs_le_integral_abs {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    [SigmaFinite μ]
    (f : α → ℝ) :
    ∫ x, |(μ[f|m]) x| ∂μ ≤ ∫ x, |f x| ∂μ := by
  sorry