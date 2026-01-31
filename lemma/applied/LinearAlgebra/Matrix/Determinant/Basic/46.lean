import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 47. Determinant of identity plus rank-one operator equals 1 + trace
lemma Matrix.det_one_add_rankOne
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (u v : n → R) :
    (1 + Matrix.vecMulVec u v).det = 1 + Matrix.trace (Matrix.vecMulVec u v) := by
  sorry


theorem Matrix.det_one_add_mul_transpose {R} [CommRing R] {m :  Type*} [Fintype  m] [DecidableEq  m] (a  b  :  m  →  R) : Matrix.det ((1  :  Matrix  m  m  R)  +  Matrix.vecMulVec  a  b)  =  1  +  Matrix.trace  (Matrix.vecMulVec  a  b)  :=  by
  exact Matrix.det_one_add_rankOne a b