import Mathlib

-- 44. Stopped process evaluated at τ equals stopped value.
lemma stoppedProcess_eval_at_τ
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι) :
  (fun ω => MeasureTheory.stoppedProcess u τ (τ ω).untopA ω) =
    MeasureTheory.stoppedValue u τ := by
  sorry
