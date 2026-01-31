import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- 75. Determinant is multiplicative on block diagonal matrices with fixed block size. -/
lemma Matrix.det_blockDiagonal_pi
    {R} [CommRing R]
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : ι → Matrix n n R) :
    (Matrix.blockDiagonal A : Matrix (n × ι) (n × ι) R).det
      = ∏ i, (A i).det := by
  sorry