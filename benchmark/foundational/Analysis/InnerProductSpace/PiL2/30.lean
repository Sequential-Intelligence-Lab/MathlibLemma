import Mathlib

variable {ι 𝕜 E : Type*}
  [Fintype ι]
  [RCLike 𝕜]
  [NormedAddCommGroup E]
  [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.repr_eq_iff
    {b : OrthonormalBasis ι 𝕜 E} {x y : E} :
    b.repr x = b.repr y ↔ x = y := by
  sorry