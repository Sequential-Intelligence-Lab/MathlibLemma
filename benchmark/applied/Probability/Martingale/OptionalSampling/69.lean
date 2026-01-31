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

lemma stopping_time_bounded_ae
    [LinearOrder ι] {ℱ : Filtration ι m}
    {τ : Ω → WithTop ι} (hτ : IsStoppingTime ℱ τ)
    (hfin : ∀ᵐ ω ∂μ, τ ω < ⊤) :
    ∀ᵐ ω ∂μ, ∃ N : ι, τ ω ≤ N := by
  sorry