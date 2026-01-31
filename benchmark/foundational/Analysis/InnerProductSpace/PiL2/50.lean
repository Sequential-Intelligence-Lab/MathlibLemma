import Mathlib

variable {ι 𝕜 E : Type*}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.isometryEquiv (b : OrthonormalBasis ι 𝕜 E) :
    Isometry (b.equiv (EuclideanSpace.basisFun ι 𝕜) (Equiv.refl ι)) := by
  sorry