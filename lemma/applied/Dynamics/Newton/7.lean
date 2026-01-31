import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Polynomial.newtonMap_X_sub_C
    {R S : Type*} [CommRing R] [Field S] [Algebra R S]
    (a : R) (x : S) :
    (Polynomial.X - Polynomial.C a).newtonMap x =
      algebraMap R S a := by
  -- Simplify the expression using the definition of the Newton map and properties of polynomials.
  simp [Polynomial.newtonMap, Polynomial.eval_X, Polynomial.eval_C, sub_eq_add_neg, mul_neg]
  -- Use the fact that the derivative of a linear polynomial is invertible to simplify the expression further.
  <;> simp [sub_eq_add_neg, mul_neg]
  -- Normalize the expression to show that it simplifies to the root 'a'.
  <;> ring_nf
  -- Use the fact that the derivative is invertible to conclude the proof.
  <;> simp [sub_eq_add_neg, mul_neg]
  -- Normalize the expression again to ensure it is in the simplest form.
  <;> ring_nf
  -- Use the fact that the derivative is invertible to conclude the proof.
  <;> simp [sub_eq_add_neg, mul_neg]
  -- Normalize the expression again to ensure it is in the simplest form.
  <;> ring_nf
  -- Use the fact that the derivative is invertible to conclude the proof.
  <;> simp [sub_eq_add_neg, mul_neg]
  -- Normalize the expression again to ensure it is in the simplest form.
  <;> ring_nf
  -- Use the fact that the derivative is invertible to conclude the proof.
  <;> simp [sub_eq_add_neg, mul_neg]
  -- Normalize the expression again to ensure it is in the simplest form.
  <;> ring_nf