import Mathlib

lemma EuclideanSpace.toEuclideanLin_injective
    {𝕜 m n : Type*} [RCLike 𝕜] [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n] :
    Function.Injective (Matrix.toEuclideanLin : Matrix m n 𝕜 → _) := by
  sorry