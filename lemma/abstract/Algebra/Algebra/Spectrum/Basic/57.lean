import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.add_mem_add_iff'
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r s : R) :
    r + s ∈ spectrum R (algebraMap R A s + a) ↔ r ∈ spectrum R a := by
  rw [spectrum.mem_iff, spectrum.mem_iff]
  congr
  rw [(algebraMap R A).map_add r s]
  abel