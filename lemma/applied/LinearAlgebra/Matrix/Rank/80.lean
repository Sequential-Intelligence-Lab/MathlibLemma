import Mathlib

lemma Matrix.rank_eq_rank_of_vecMul_eq
    {R m n} [CommRing R] [Fintype n]
    (A B : Matrix m n R)
    (h : ∀ v, A.mulVec v = B.mulVec v) :
    A.rank = B.rank := by
  classical
  -- Turn pointwise equality into equality of functions
  have hfun : A.mulVec = B.mulVec := funext h
  -- Show the matrices are equal by extensionality
  have hAB : A = B := by
    ext i j
    -- Look at the effect on the j-th standard basis vector at coordinate i
    have hij := congrArg (fun f => f (Pi.single j (1 : R)) i) hfun
    -- Simplify mulVec on a standard basis vector to get the (i,j)-entry
    simpa [Matrix.mulVec] using hij
  -- Ranks are equal for equal matrices
  simpa [hAB]