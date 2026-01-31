import Mathlib

lemma TensorProduct.inner_tmul_tmul_real
    {E F : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    (x x' : E) (y y' : F) :
    inner ℝ (x ⊗ₜ[ℝ] y) (x' ⊗ₜ[ℝ] y') =
      inner ℝ x x' * inner ℝ y y' := by
  -- This is a direct specialization of `TensorProduct.inner_tmul_tmul` to `ℝ`
  simpa using
    (TensorProduct.inner_tmul_tmul (x := x) (x' := x') (y := y) (y' := y'))