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

lemma IsStoppingTime.succ
    [LinearOrder ι] [SuccOrder ι] {ℱ : Filtration ι m} {τ : Ω → WithTop ι}
    (hτ : IsStoppingTime ℱ τ) :
    IsStoppingTime ℱ (fun ω => (τ ω).map fun t => Order.succ t) := by
  sorry