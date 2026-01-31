import Mathlib

-- 38. Stopped value respects addition.
lemma stoppedValue_add
  {Ω ι β : Type*} [Nonempty ι] [AddGroup β]
  (u v : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedValue (fun i ω => u i ω + v i ω) τ
    =
  fun ω => MeasureTheory.stoppedValue u τ ω
    + MeasureTheory.stoppedValue v τ ω := by
  sorry
