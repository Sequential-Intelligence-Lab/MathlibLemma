import Mathlib

lemma EuclideanSpace.orthogonal_standardBasis
    {𝕜 ι : Type*} [RCLike 𝕜] [Fintype ι] [DecidableEq ι]
    (i : ι) :
    (𝕜 ∙ EuclideanSpace.single i (1 : 𝕜))ᗮ =
      {x : EuclideanSpace 𝕜 ι | x i = 0} := by
  sorry