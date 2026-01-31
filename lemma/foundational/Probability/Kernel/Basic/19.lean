import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Kernel.copy_symm (α : Type*) [MeasurableSpace α] :
    ProbabilityTheory.Kernel.comp
      (ProbabilityTheory.Kernel.swap α α)
      (ProbabilityTheory.Kernel.copy α)
      =
      ProbabilityTheory.Kernel.copy α := by
  ext f
  -- Use extensionality to show that the composition behaves the same as Kernel.copy α for any measurable function f.
  simp [ProbabilityTheory.Kernel.copy_apply, ProbabilityTheory.Kernel.swap_apply,
    ProbabilityTheory.Kernel.comp_apply]
  -- Simplify the expression to show that the composition results in the same output as Kernel.copy α.
  <;> funext
  -- Apply funext to handle the function extensionality.
  <;> simp [ProbabilityTheory.Kernel.copy_apply, ProbabilityTheory.Kernel.swap_apply,
    ProbabilityTheory.Kernel.comp_apply]