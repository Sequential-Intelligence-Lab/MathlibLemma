import Mathlib

lemma TensorProduct.norm_tmul_sq
    {E F : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [NormedAddCommGroup F] [InnerProductSpace ℂ F]
    (x : E) (y : F) :
    ‖x ⊗ₜ[ℂ] y‖^2 = ‖x‖^2 * ‖y‖^2 := by
  sorry