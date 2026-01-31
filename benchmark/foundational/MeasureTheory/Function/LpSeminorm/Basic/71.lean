import Mathlib

open MeasureTheory

lemma eLpNormEssSup_eq_essSup_ofReal
    {α : Type _} [MeasurableSpace α]
    (μ : Measure α) (f : α → ℝ) :
    eLpNormEssSup f μ =
      essSup (fun x => ENNReal.ofReal (|f x|)) μ := by
  sorry