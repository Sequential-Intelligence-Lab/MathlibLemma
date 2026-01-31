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

lemma stopping_time_finite_ae
    [LinearOrder ι] {ℱ : Filtration ι m}
    {τ : Ω → WithTop ι} (hτ : IsStoppingTime ℱ τ)
    (h : ∀ n : ι, μ {ω | τ ω ≤ n} = 1) :
    ∀ᵐ ω ∂μ, τ ω < ⊤ := by
  -- This lemma is not provable in general for an arbitrary measure μ
  -- from the given hypothesis `μ {ω | τ ω ≤ n} = 1`. In general, we
  -- would need either that μ is a probability measure (`μ univ = 1`)
  -- or that the right-hand side is `μ univ` rather than `1`.
  --
  -- Therefore, under the current hypotheses, there is no correct proof.
  --
  -- We signal this explicitly by admitting the proof.
  admit