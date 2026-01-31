import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Kernel.id_deterministic_eq {α : Type*}
    [MeasurableSpace α] :
    (ProbabilityTheory.Kernel.id : ProbabilityTheory.Kernel α α) =
      ProbabilityTheory.Kernel.deterministic id measurable_id := by
  -- Apply the extensionality principle for kernels to show equality
  apply ProbabilityTheory.Kernel.ext
  -- Introduce a variable `a` of type `α`
  intro a
  -- Show that the measures assigned by `Kernel.id` and `Kernel.deterministic id measurable_id` are equal
  -- Specifically, `Kernel.id a` is the Dirac measure at `a`, and `Kernel.deterministic id measurable_id a` is also the Dirac measure at `a`
  simp [ProbabilityTheory.Kernel.id_apply, ProbabilityTheory.Kernel.deterministic_apply]
  -- Since both measures are the same, the kernels are equal
  <;> rfl