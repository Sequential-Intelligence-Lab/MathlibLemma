import Mathlib

-- 29. Stopped process at deterministic time t is the same as truncation in time.
lemma stoppedProcess_det
  {Ω ι β : Type*} [LinearOrder ι] [Zero ι] [Nonempty ι]
  (u : ι → Ω → β) (t : ι) :
  MeasureTheory.stoppedProcess u (fun _ => (t : WithTop ι)) =
    fun i ω => u (min i t) ω := by
  sorry