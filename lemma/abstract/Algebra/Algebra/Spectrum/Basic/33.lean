import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma resolventSet.eq_of_spectrum_eq
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A}
    (h : spectrum R a = spectrum R b) :
    resolventSet R a = resolventSet R b := by
  ext
  constructor <;> simp_all [resolventSet, spectrum]
  <;> tauto