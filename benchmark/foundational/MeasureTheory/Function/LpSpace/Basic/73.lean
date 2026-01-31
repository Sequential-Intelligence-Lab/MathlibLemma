import Mathlib

open scoped Real
open MeasureTheory

lemma Lp.integrable_of_memLp_one
    {α E : Type*} {m : MeasurableSpace α}
    (μ : Measure α) [NormedAddCommGroup E] [NormedSpace ℝ E]
    [Fact ((1 : ℝ) ≤ 1)]
    (f : MeasureTheory.Lp E 1 μ) :
    MeasureTheory.Integrable f μ := by
  sorry