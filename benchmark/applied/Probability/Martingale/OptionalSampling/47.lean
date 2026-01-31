import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open MeasureTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

lemma stoppedValue_equal_expectation_martingale
    [LinearOrder ι] [Nonempty ι]
    {ℱ : Filtration ι m} {f : ι → Ω → E}
    [IsProbabilityMeasure μ]
    (hmg : Martingale f ℱ μ) {τ : Ω → WithTop ι}
    (hτ : IsStoppingTime ℱ τ) (n : ι) (hbounded : ∀ ω, τ ω ≤ n) :
    ∫ ω, stoppedValue f τ ω ∂μ = ∫ ω, f n ω ∂μ := by
  sorry