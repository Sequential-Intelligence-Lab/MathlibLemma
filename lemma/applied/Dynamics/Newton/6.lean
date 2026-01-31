import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open Polynomial

/-- Newton map on the zero polynomial is the identity map. -/
theorem Polynomial.newtonMap_zero
    {R : Type*} [CommRing R] (x : R) :
    (0 : R[X]).newtonMap x = x := by
  simp [Polynomial.newtonMap, Polynomial.eval_zero, Polynomial.derivative_zero, div_zero]