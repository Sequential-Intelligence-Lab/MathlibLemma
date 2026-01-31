import Mathlib

open scoped BigOperators

lemma TensorProduct_OrthonormalBasis_tensorProduct_isometry
    {E F : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E] [FiniteDimensional ℂ E]
    [NormedAddCommGroup F] [InnerProductSpace ℂ F] [FiniteDimensional ℂ F]
    {ι₁ ι₂ : Type*} [Fintype ι₁] [Fintype ι₂]
    [DecidableEq ι₁] [DecidableEq ι₂]
    (b₁ : OrthonormalBasis ι₁ ℂ E)
    (b₂ : OrthonormalBasis ι₂ ℂ F) :
    ∀ x, ‖x‖ =
      ‖(b₁.tensorProduct b₂).repr x‖ := by
  sorry