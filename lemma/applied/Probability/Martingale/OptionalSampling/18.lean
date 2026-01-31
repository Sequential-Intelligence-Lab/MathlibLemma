import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

variable {Ω E F ι ι' α β γ : Type*}
variable {m m1 m2 : MeasurableSpace Ω}
variable {μ ν : MeasureTheory.Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

open MeasureTheory

lemma IsStoppingTime.le_max_right
    [LinearOrder ι]
    {ℱ : Filtration ι m} {τ σ : Ω → WithTop ι}
    (hτ : IsStoppingTime ℱ τ) (hσ : IsStoppingTime ℱ σ) :
    σ ≤ fun ω => max (τ ω) (σ ω) := by
  -- The proof is pointwise: for each ω, σ ω ≤ max (τ ω) (σ ω)
  intro ω
  -- Use the standard order lemma and commutativity of max
  simpa [max_comm] using (le_max_left (σ ω) (τ ω))