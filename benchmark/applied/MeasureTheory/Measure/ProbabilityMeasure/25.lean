import Mathlib

open scoped Topology
open MeasureTheory
open Filter

/-- A probability measure is weakly convergent if it converges on a dense set of bounded continuous
functions and is uniformly tight. (Portmanteau-like lemma, statement only.) -/
lemma ProbabilityMeasure.tendsto_of_tendsto_on_dense
    {Ω : Type*} [TopologicalSpace Ω] [MeasurableSpace Ω] [OpensMeasurableSpace Ω]
    {ι : Type*} {F : Filter ι}
    (μs : ι → MeasureTheory.ProbabilityMeasure Ω)
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (D : Set (BoundedContinuousFunction Ω ℝ))
    (hDdense : Dense D)
    (hclosed : IsClosed D)
    (hμs :
      ∀ f ∈ D,
        Tendsto (fun i => ∫ x, f x ∂((μs i : MeasureTheory.ProbabilityMeasure Ω) :
          MeasureTheory.Measure Ω)) F
          (𝓝 (∫ x, f x ∂((μ : MeasureTheory.ProbabilityMeasure Ω) :
            MeasureTheory.Measure Ω))))
    (htight :
      ∀ ε > (0 : ℝ),
        ∃ K : Set Ω, IsCompact K ∧
          ∀ i, ((μs i : MeasureTheory.ProbabilityMeasure Ω) :
            MeasureTheory.Measure Ω) Kᶜ ≤ ENNReal.ofReal ε) :
    Tendsto μs F (𝓝 μ) := by
  sorry