import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open scoped MeasureTheory
open MeasureTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m m1 m2 : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

----------------------------------------------------------------
-- 1. Basic properties and constructions of stopping times
----------------------------------------------------------------

lemma IsStoppingTime.comp_measurable
    [LinearOrder ι] {ℱ : Filtration ι m} {τ : Ω → WithTop ι} {g : Ω → Ω}
    (hτ : IsStoppingTime ℱ τ) (hg : Measurable g)
    (hcomp : ∀ ω, τ (g ω) = τ ω) :
    IsStoppingTime ℱ (τ ∘ g) := by
  -- proof omitted
  sorry