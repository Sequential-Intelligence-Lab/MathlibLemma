import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_fractionRing
    {R} [CommRing R] [IsDomain R]
    (M : Matrix (Fin n) (Fin n) R) :
    (Matrix.map M (algebraMap R (FractionRing R))).det =
      algebraMap R (FractionRing R) M.det := by
  have h_main : (Matrix.map M (algebraMap R (FractionRing R))).det = algebraMap R (FractionRing R) M.det := by
    rw [Matrix.det_apply]
    rw [Matrix.det_apply]
    -- We need to show that the sum over permutations of the mapped matrix equals the map of the sum over permutations.
    -- This involves using the properties of ring homomorphisms and the definition of the determinant.
    simp [Matrix.map_apply, Finset.sum_mul, Finset.mul_sum, mul_assoc]
    -- Use the fact that the algebra map is a ring homomorphism to move it inside the sum and product.
    <;>
    simp_all [mul_assoc, Finset.sum_mul, Finset.mul_sum, algebraMap_mul, algebraMap_add]
    <;>
    congr 1 <;> ext <;> simp [Finset.prod_mul_distrib, Finset.mul_prod, mul_assoc, algebraMap_mul]
    <;>
    ring_nf
    <;>
    simp_all [algebraMap_mul, algebraMap_add]
    <;>
    norm_cast
    <;>
    simp_all [Finset.prod_mul_distrib, Finset.mul_prod, mul_assoc]
    <;>
    ring_nf
    <;>
    simp_all [algebraMap_mul, algebraMap_add]
    <;>
    norm_cast
  exact h_main