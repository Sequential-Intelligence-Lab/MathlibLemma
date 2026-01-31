import Mathlib

variable {ι 𝕜 E : Type*}
variable [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [Fintype ι]

lemma OrthonormalBasis.repr_mul
    (b : OrthonormalBasis ι 𝕜 E) (c : 𝕜) (x : E) :
    b.repr (c • x) = c • b.repr x := by
  -- This is exactly `OrthonormalBasis.repr_smul` in `mathlib`
  simpa using b.repr_smul c x