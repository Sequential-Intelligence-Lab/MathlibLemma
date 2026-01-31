import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma mulVec_single_coord [NonUnitalNonAssocSemiring α] [Fintype n] [DecidableEq n]
    (A : Matrix m n α) (i : n) (x : α) :
    Matrix.mulVec A (Pi.single i x : n → α) =
      MulOpposite.op x • A.col i := by
  have h_main : ∀ (k : m), (Matrix.mulVec A (Pi.single i x : n → α)) k = (MulOpposite.op x • A.col i) k := by
    intro k
    simp [Matrix.mulVec, Matrix.col_apply, Pi.smul_apply, Finset.sum_ite_eq', Finset.mem_univ, ite_eq_left_iff]
    <;>
    aesop
  
  have h_final : Matrix.mulVec A (Pi.single i x : n → α) = MulOpposite.op x • A.col i := by
    ext k
    apply h_main
  
  apply h_final