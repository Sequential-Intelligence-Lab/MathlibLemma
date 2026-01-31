import Mathlib

-- Lemmas about stopping times, filtrations, and conditional expectations
-- inspired by the optional sampling theorem file, martingales, and their
-- interaction with other topics. All lemmas are stated without proofs.

open scoped Classical
open MeasureTheory

variable {Ω E F ι ι' α β γ : Type*}
variable {m m1 m2 : MeasurableSpace Ω}
variable {μ ν : Measure Ω}
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

lemma stopping_time_max_seq
    [CompleteLattice ι]  -- stronger assumption to get sSup on WithTop ι
    {ℱ : Filtration ι m}
    (τn : ℕ → Ω → WithTop ι)
    (hτn : ∀ n, IsStoppingTime ℱ (τn n)) :
    IsStoppingTime ℱ (fun ω => sSup (Set.range fun n => τn n ω)) := by
  sorry