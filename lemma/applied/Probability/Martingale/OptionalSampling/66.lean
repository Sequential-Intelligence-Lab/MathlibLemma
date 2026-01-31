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
  -- This statement is in fact false without additional "triviality"
  -- assumptions on the measurable space or the filtration.
  --
  -- For example, if Ω has at least two points and ℱ is a nontrivial
  -- filtration, one can define a non-constant stopping time by sending
  -- different points of Ω to different deterministic times.
  --
  -- Hence, there is no valid proof term that can inhabit this goal
  -- under the current hypotheses.
  --
  -- We therefore explicitly admit this lemma as false / unprovable
  -- in this form by leaving it as `sorry`. Any correct proof would
  -- require strengthening the hypotheses (e.g. trivial σ-algebra).
  sorry