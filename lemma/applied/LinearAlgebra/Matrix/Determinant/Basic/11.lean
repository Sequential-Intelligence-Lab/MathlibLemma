import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

namespace Matrix

variable {R} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Hypothetical matrix that scales column `i` of a matrix by `c` when multiplied on the right. -/
def elemMulCol (i : n) (c : R) : Matrix n n R :=
  fun j k => if k = i then (if j = k then c else 0) else (if j = k then 1 else 0)

end Matrix

-- 12. Determinant scales under right multiplication by col-scaling matrix
lemma Matrix.det_elem_mulCol_mul
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (i : n) (c : R) :
    (A * Matrix.elemMulCol i c).det = c * A.det := by
  have h1 : (Matrix.elemMulCol i c).det = c := by
    have h2 : (Matrix.elemMulCol i c) = Matrix.diagonal (fun j : n => if j = i then c else 1) := by
      funext j k
      simp [Matrix.elemMulCol, Matrix.diagonal]
      split_ifs <;> try { aesop }
    rw [h2]
    simp [Matrix.det_diagonal]
    all_goals try { 
      have h3 : ∏ j : n, (if j = i then c else 1 : R) = c := by
        calc
          ∏ j : n, (if j = i then c else 1 : R) = (∏ j ∈ ({i} : Finset n), (if j = i then c else 1 : R)) * (∏ j ∈ (Finset.univ \ ({i} : Finset n)), (if j = i then c else 1 : R)) := by
            rw [Finset.prod_sdiff (show ({i} : Finset n) ⊆ Finset.univ by simp)]
          _ = (∏ j ∈ ({i} : Finset n), (if j = i then c else 1 : R)) * (∏ j ∈ (Finset.univ \ ({i} : Finset n)), (1 : R)) := by
            congr
            funext j
            simp
          _ = (∏ j ∈ ({i} : Finset n), (if j = i then c else 1 : R)) * (1 : R) := by
            simp
          _ = (∏ j ∈ ({i} : Finset n), (if j = i then c else 1 : R)) := by 
            ring
          _ = (if i = i then c else 1 : R) := by
            simp
          _ = (c : R) := by 
            simp
      rw [h3]
    }
  rw [Matrix.det_mul]
  rw [h1]
  all_goals try { ring }