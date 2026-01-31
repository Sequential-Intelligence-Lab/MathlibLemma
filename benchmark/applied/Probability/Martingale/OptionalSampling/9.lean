import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open MeasureTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m m1 m2 : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

lemma IsStoppingTime.comp_withTop_coe
    [LinearOrder ι] {ℱ : Filtration ι m} {τ : Ω → ι}
    (hτ : IsStoppingTime ℱ (fun ω => (τ ω : WithTop ι))) :
    IsStoppingTime ℱ (fun ω => (τ ω : WithTop ι)) := by
  -- This lemma is just restating its own hypothesis; we leave it as `sorry` as requested.
  sorry