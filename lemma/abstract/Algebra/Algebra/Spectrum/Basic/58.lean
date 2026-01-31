import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.sub_mem_sub_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) (r s : R) :
    r - s ∈ spectrum R (a - algebraMap R A s) ↔ r ∈ spectrum R a := by
  constructor <;> intro h
  -- Forward direction: If r - s is in the spectrum of a - s, then r is in the spectrum of a.
  <;> simp_all [spectrum.mem_iff]
  -- Reverse direction: If r is in the spectrum of a, then r - s is in the spectrum of a - s.
  <;> use 0
  <;> simp_all [sub_eq_add_neg]
  <;> linarith