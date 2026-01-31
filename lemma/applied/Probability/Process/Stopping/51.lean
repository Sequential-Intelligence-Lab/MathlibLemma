import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma stoppedValue_det
  {Ω ι β : Type*} [Nonempty ι]
  (u : ι → Ω → β) (t : ι) :
  MeasureTheory.stoppedValue u (fun _ => (t : WithTop ι)) =
    fun ω => u t ω := by
  -- Since τ is deterministic, it is a constant function, and we can use the constant value t for all ω.
  ext ω
  -- Simplify the expression using the fact that τ is a constant function.
  simp [MeasureTheory.stoppedValue]
  -- Since τ is deterministic, the stopped value reduces to the value of the process at the fixed time t.
  <;> simp [MeasureTheory.stoppedValue]
  -- The final result is the value of the process at the fixed time t for all ω.
  <;> simp [MeasureTheory.stoppedValue]