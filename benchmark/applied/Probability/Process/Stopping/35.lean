import Mathlib

-- 36. Stopped process respects linearity.
lemma stoppedProcess_add
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [AddGroup β]
  (u v : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess (fun i ω => u i ω + v i ω) τ
    =
  fun i ω => MeasureTheory.stoppedProcess u τ i ω
    + MeasureTheory.stoppedProcess v τ i ω := by
  sorry