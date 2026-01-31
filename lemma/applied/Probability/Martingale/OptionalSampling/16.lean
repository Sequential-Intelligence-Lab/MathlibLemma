import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

variable {Ω ι : Type*}
variable {m : MeasurableSpace Ω}

open MeasureTheory

lemma MeasureTheory.IsStoppingTime.min_le_right
    [LinearOrder ι] {ℱ : Filtration ι m} {τ σ : Ω → WithTop ι}
    (hτ : MeasureTheory.IsStoppingTime ℱ τ)
    (hσ : MeasureTheory.IsStoppingTime ℱ σ) :
    (fun ω => min (τ ω) (σ ω)) ≤ σ := by
  -- We prove the pointwise inequality: ∀ ω, min (τ ω) (σ ω) ≤ σ ω
  intro ω
  -- Now the goal is min (τ ω) (σ ω) ≤ σ ω
  simpa using (min_le_right (τ ω) (σ ω))