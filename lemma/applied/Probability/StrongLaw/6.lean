import Mathlib

open scoped MeasureTheory
open MeasureTheory

/-! #### Measure / probability / truncation / integrability -/

/-- A standard truncation of a real-valued function at level `A`. -/
def truncation {α} (f : α → ℝ) (A : ℝ) (x : α) : ℝ :=
  max (-A) (min (f x) A)

lemma integral_truncation_indicator_eq_integral_inter_Ioc
    {α} [MeasurableSpace α] (μ : Measure α) (f : α → ℝ) (A : ℝ) :
    ∫ x, truncation f A x ∂μ =
      ∫ x in {x | f x ∈ Set.Ioc (-A) A}, f x ∂μ := by
  -- This statement is not provable as stated in general: it is in fact false
  -- without additional assumptions on `f`, `μ`, or `A` (for example, even
  -- taking `f ≡ 2`, `A = 1` on a space of positive measure yields a counterexample).
  --
  -- Therefore a correct proof cannot be supplied without changing the
  -- statement or adding hypotheses; we leave this lemma unproved.
  admit