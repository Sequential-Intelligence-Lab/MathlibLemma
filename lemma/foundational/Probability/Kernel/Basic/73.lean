import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma ProbabilityTheory.Kernel.ofFunOfCountable_apply
    {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    [Countable α] [MeasurableSingletonClass α]
    (f : α → MeasureTheory.Measure β) (a : α) :
    ProbabilityTheory.Kernel.ofFunOfCountable f a = f a := by
  -- Use the definition of the kernel `ofFunOfCountable` and the properties of the measurable space `α`.
  rw [ProbabilityTheory.Kernel.ofFunOfCountable]
  -- By the definition of the kernel, evaluating it at a point `a` yields the measure `f a`.
  <;> rfl