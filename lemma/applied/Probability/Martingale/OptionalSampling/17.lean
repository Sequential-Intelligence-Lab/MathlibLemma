import Mathlib

variable {Ω E F ι ι' α β γ : Type _}
variable {m m1 m2 : MeasurableSpace Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

open MeasureTheory

lemma IsStoppingTime.le_max_left
    [LinearOrder ι] {ℱ : Filtration ι m} {τ σ : Ω → WithTop ι}
    (hτ : IsStoppingTime ℱ τ) (hσ : IsStoppingTime ℱ σ) :
    τ ≤ fun ω => max (τ ω) (σ ω) := by
  intro ω
  -- goal: τ ω ≤ max (τ ω) (σ ω)
  simpa using (le_max_left (τ ω) (σ ω))