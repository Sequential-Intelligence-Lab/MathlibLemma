import Mathlib

open MeasureTheory Set

/-! #### Measure / probability / truncation / integrability -/

/-- A simple truncation of a real-valued function at level `A`. -/
def truncation {α} (f : α → ℝ) (A : ℝ) (x : α) : ℝ :=
  max (min (f x) A) (-A)

lemma truncation_bound_integral_sq {α} [MeasurableSpace α] (μ : Measure α)
    (f : α → ℝ) (hf : AEStronglyMeasurable f μ) (A : ℝ) :
    ∫ x, (truncation f A x)^2 ∂μ ≤ A^2 * (μ Set.univ).toReal := by
  sorry