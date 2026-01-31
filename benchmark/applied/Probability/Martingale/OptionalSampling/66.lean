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

lemma stopping_time_eq_const_of_trivial
    [LinearOrder ι] {ℱ : Filtration ℕ m}
    {τ : Ω → WithTop ℕ} (hτ : IsStoppingTime ℱ τ) :
    ∃ c : WithTop ℕ, τ = fun _ => c := by
  sorry