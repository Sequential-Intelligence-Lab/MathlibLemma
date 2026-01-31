import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.rank_eq_rank_of_mul_left_invertible
    {R m n} [CommRing R] [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m n R) (P : Matrix m m R) (hP : IsUnit P.det) :
    (P * A).rank = A.rank := by
  -- Use the property that the rank of a product of matrices is less than or equal to the minimum of the ranks of the individual matrices.
  apply le_antisymm
  -- Since P is invertible, the rank of PA is less than or equal to the rank of A.
  <;> simp_all [Matrix.rank_mul_le_left]
  -- Since P is invertible, the rank of A is less than or equal to the rank of PA.
  <;> simp_all [Matrix.rank_mul_le_right]
  -- Since P is invertible, the rank of PA is equal to the rank of A.
  <;> simp_all [Matrix.rank_mul_le_left]
  -- Since P is invertible, the rank of A is equal to the rank of PA.
  <;> simp_all [Matrix.rank_mul_le_right]
  -- Since P is invertible, the rank of PA is equal to the rank of A.
  <;> simp_all [Matrix.rank_mul_le_left]
  -- Since P is invertible, the rank of A is equal to the rank of PA.
  <;> simp_all [Matrix.rank_mul_le_right]