import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedProcess_at_top
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  (u : ι → Ω → β) :
  MeasureTheory.stoppedProcess u (fun _ => (⊤ : WithTop ι)) = u := by
  ext t
  simp [MeasureTheory.stoppedProcess]
  <;> split_ifs <;> simp_all [WithTop.coe_top]
  <;> aesop