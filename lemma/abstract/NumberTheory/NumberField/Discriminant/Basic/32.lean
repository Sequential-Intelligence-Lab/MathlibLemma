import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem finite_subfields_of_discr_bdd
    (K : Type*) [Field K] [NumberField K]
    (discr : IntermediateField ℚ K → ℤ) (N : ℕ) :
    {L : IntermediateField ℚ K | |discr L| ≤ N}.Finite := by 
  sorry