import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_transpose_map_polynomial
    {S} [CommRing S]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n S) :
    A.transpose.det = A.det := by
  -- Use the Leibniz formula for determinants, which involves sums over permutations and signs.
  rw [Matrix.det, Matrix.det]
  -- The transpose of a matrix swaps rows and columns, which corresponds to swapping indices in the permutation sum.
  simp [Matrix.transpose_apply, Finset.sum_congr]
  -- Since the ring is commutative, the product of elements is invariant under permutation, ensuring the equality of the sums.
  <;> simp [mul_comm]