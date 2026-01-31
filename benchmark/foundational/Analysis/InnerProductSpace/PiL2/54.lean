import Mathlib

lemma OrthonormalBasis.stdOrthonormalBasis_isometry (𝕜 E)
    [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [FiniteDimensional 𝕜 E] :
    Isometry (stdOrthonormalBasis 𝕜 E).repr := by
  sorry