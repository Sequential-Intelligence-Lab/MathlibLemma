import Mathlib

open MeasureTheory
open scoped BigOperators

variable {Ω E F ι ι' α β γ : Type*}
variable {m : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

lemma stoppedValue_bound_in_probability
    [LinearOrder ι] [Nonempty ι]
    {ℱ : Filtration ι m} {f : ι → Ω → ℝ}
    (hint : ∀ i, Integrable (f i) μ)
    (hmg : Martingale f ℱ μ)
    {τ : Ω → WithTop ι} (hτ : IsStoppingTime ℱ τ)
    (hb : ∃ N : ι, ∀ ω, τ ω ≤ N) (ε : ℝ) (hε : 0 < ε) :
    μ {ω | |stoppedValue f τ ω| ≥ ε} ≤
      μ {ω | sSup (Set.range (fun n : ι => |f n ω|)) ≥ ε} := by
  sorry