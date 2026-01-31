import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open scoped MeasureTheory
open MeasureTheory
open ProbabilityTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m m1 m2 : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

lemma condexp_stoppedValue_eq_self_of_integrable
    [LinearOrder ι] [Nonempty ι]
    [SigmaFinite μ]
    {ℱ : Filtration ι m} {f : ι → Ω → E} {τ : Ω → WithTop ι}
    (hτ : IsStoppingTime ℱ τ)
    (hf : ∀ n, Integrable (f n) μ)
    (hadapted : Adapted ℱ f)
    (hbounded : ∃ N : ι, ∀ ω, τ ω ≤ N) :
    (μ[stoppedValue f τ | hτ.measurableSpace] : Ω → E)
      =ᵐ[μ] stoppedValue f τ := by
  sorry