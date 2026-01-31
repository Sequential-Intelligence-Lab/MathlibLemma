import Mathlib

open MeasureTheory Filter

/-- The convergence of finite measures in total variation and of their total mass implies the
weak convergence of their normalizations. -/
lemma MeasureTheory.FiniteMeasure.tendsto_normalize_of_tendsto_tv
    {Ω : Type*} [Nonempty Ω] [MeasurableSpace Ω] [TopologicalSpace Ω]
    [OpensMeasurableSpace Ω]
    {ι : Type*} {F : Filter ι}
    {μs : ι → MeasureTheory.FiniteMeasure Ω}
    {μ : MeasureTheory.FiniteMeasure Ω}
    (hμ : μ ≠ 0)
    (hTV :
      Tendsto
        (fun i =>
          ((μs i : Measure Ω) - (μ : Measure Ω)).real Set.univ)
        F
        (nhds 0))
    (hmass :
      Tendsto
        (fun i => (μs i).mass)
        F
        (nhds μ.mass)) :
    Tendsto
      (fun i => (μs i).normalize : ι → ProbabilityMeasure Ω)
      F
      (nhds (μ.normalize : ProbabilityMeasure Ω)) := by
  sorry