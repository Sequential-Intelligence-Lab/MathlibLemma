import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.union_resolventSet_univ
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a ∪ resolventSet R a = Set.univ := by
  -- We need to show that every element in R is either in the spectrum or the resolvent set.
  ext r
  -- Consider an arbitrary element r in R.
  constructor <;> simp [spectrum, resolventSet]
  -- Case 1: If r is in the spectrum, then a - r is not invertible.
  -- Case 2: If r is in the resolvent set, then a - r is invertible.
  -- Since every r falls into exactly one of these cases, the union of the spectrum and resolvent set includes all r in R.
  <;> intro h
  <;> simp_all [Set.mem_union]
  <;> tauto