import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open scoped BigOperators
open MeasureTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

lemma stoppedValue_equal_expectation_submartingale_le
    [LinearOrder ι] [Zero ι]
    {ℱ : Filtration ι m} {f : ι → Ω → ℝ}
    (hsubmg : MeasureTheory.Submartingale f ℱ μ) {τ : Ω → WithTop ι}
    (hτ : MeasureTheory.IsStoppingTime ℱ τ) (n : ι) (hbounded : ∀ ω, τ ω ≤ n) :
    ∫ ω, f 0 ω ∂μ ≤ ∫ ω, MeasureTheory.stoppedValue f τ ω ∂μ := by
  sorry