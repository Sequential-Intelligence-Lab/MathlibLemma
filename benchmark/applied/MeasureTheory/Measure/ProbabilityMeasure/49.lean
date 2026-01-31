import Mathlib

open scoped BoundedContinuousFunction Topology
open Filter MeasureTheory

/-- If a sequence of probability measures converges weakly to a Dirac measure, then
the distributions converge in law to a constant random variable. -/
lemma ProbabilityMeasure.tendsto_toDirac
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    {ι : Type*} {F : Filter ι}
    {μs : ι → MeasureTheory.ProbabilityMeasure Ω}
    {x : Ω}
    (hμs :
      Tendsto μs F
        (𝓝 ⟨Measure.dirac x, Measure.dirac.isProbabilityMeasure⟩)) :
    ∀ f : Ω →ᵇ ℝ,
      Tendsto
        (fun i => ∫ y, f y ∂(μs i : Measure Ω)) F
        (𝓝 (f x)) := by
  sorry