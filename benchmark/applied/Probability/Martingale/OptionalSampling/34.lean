import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open scoped MeasureTheory
open MeasureTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m m1 m2 : MeasurableSpace Ω}
variable (μ : Measure Ω)
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

lemma condexp_stopping_time_of_const
    [LinearOrder ι] {ℱ : Filtration ι m} {τ : Ω → WithTop ι}
    (hτ : IsStoppingTime ℱ τ) (c : E) :
    μ[(fun _ : Ω => c) | hτ.measurableSpace] =ᵐ[μ] fun _ : Ω => c := by
  sorry