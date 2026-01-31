import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.preimage_resolventSet_eq
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    (fun r : R => algebraMap R A r - a) ⁻¹' {x | IsUnit x} = resolventSet R a := by
  ext r
  simp [resolventSet, Set.mem_preimage, Set.mem_setOf_eq]
  -- Simplify the expressions to show that the preimage condition is equivalent to the resolvent set condition.
  <;> simp_all [IsUnit]
  -- Further simplify using the definition of IsUnit to confirm the equivalence.
  <;> tauto