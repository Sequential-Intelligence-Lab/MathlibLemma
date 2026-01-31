import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma ProbabilityTheory.Kernel.boolKernel_apply_false
    {α : Type*}
    [MeasurableSpace α]
    {μ ν : MeasureTheory.Measure α} :
    ProbabilityTheory.Kernel.boolKernel μ ν false = μ := by
  -- We will show that for any measurable set A, the measure assigned by boolKernel μ ν false is equal to μ(A).
  ext A
  -- By the definition of boolKernel, when the boolean is false, it returns μ.
  simp [ProbabilityTheory.Kernel.boolKernel]
  -- Since boolKernel μ ν false is equal to μ for all measurable sets A, we conclude the equality of the measures.
  <;> aesop