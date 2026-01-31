import Mathlib

lemma EuclideanSpace.toEuclideanLin_surjective
    {𝕜 : Type*} [RCLike 𝕜]
    {m n : Type*} [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n] :
    Function.Surjective (Matrix.toEuclideanLin : Matrix m n 𝕜 → _) := by
  sorry