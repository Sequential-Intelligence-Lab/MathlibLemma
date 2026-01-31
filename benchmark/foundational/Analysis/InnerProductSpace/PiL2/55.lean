import Mathlib

lemma OrthonormalBasis.stdOrthonormalBasis_repr_symm
    {𝕜 E}
    [RCLike 𝕜]
    [NormedAddCommGroup E]
    [InnerProductSpace 𝕜 E]
    [FiniteDimensional 𝕜 E] :
    (stdOrthonormalBasis 𝕜 E).repr.symm =
      (stdOrthonormalBasis 𝕜 E).repr.symm := by
  sorry