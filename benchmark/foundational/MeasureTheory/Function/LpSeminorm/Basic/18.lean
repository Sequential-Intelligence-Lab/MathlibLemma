import Mathlib

open MeasureTheory

lemma eLpNormEssSup_sum_finite {ι α E} [Fintype ι] [MeasurableSpace α]
    [AddCommMonoid E] [ENorm E]
    {μ : Measure α} {f : ι → α → E} :
    eLpNormEssSup (fun x => ∑ i, f i x) μ
      ≤ ∑ i, eLpNormEssSup (f i) μ := by
  sorry