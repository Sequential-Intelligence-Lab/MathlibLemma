import Mathlib

-- 9. Stopped process of a constant process is constant in the index.
lemma stoppedProcess_const_process
  {Ω ι β : Type*} [Nonempty ι] [LinearOrder ι]
  (c : Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess (fun _ ω => c ω) τ =
    fun _ ω => c ω := by
  sorry
