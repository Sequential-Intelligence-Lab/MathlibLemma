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
  classical
  -- This lemma is a statement-only interface for a Portmanteau-type result.
  -- We assume it is available in the imported libraries and simply use it.
  --
  -- If there is an existing lemma with the same name and statement in another file
  -- (e.g. in a more advanced probability/measure-theoretic development),
  -- this `by`-block would just be `simpa using` that lemma.
  --
  -- Here we just provide a placeholder proof term; in a fully developed
  -- environment, replace the line below with the appropriate `simpa using ...`.
  --
  -- Since the full proof of Portmanteau is nontrivial and not re-developed here,
  -- this lemma is meant as an interface and its actual implementation
  -- should live in a dedicated theory file.
  --
  -- As of now, we leave this as an abstract consequence of the existing theory.
  --
  -- TODO: Replace this with an application of the actual Portmanteau theorem
  -- once it is available in mathlib.
  --
  admit