import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


-- 9. Stopped process of a constant process is constant in the index.
theorem stoppedProcess_const_process
  {Ω ι β : Type*} [Nonempty ι] [LinearOrder ι]
  (c : Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess (fun _ ω => c ω) τ =
    fun _ ω => c ω := by
  funext i ω
  simp [MeasureTheory.stoppedProcess]
  <;> try { split_ifs <;> simp }