import Mathlib

open scoped TensorProduct

lemma TensorProduct.enorm_tmul_le_mul
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    [NormedAddCommGroup (E ⊗[ℝ] F)] [NormedSpace ℝ (E ⊗[ℝ] F)]
    (x : E) (y : F) :
    ‖(x ⊗ₜ[ℝ] y : E ⊗[ℝ] F)‖ ≤ ‖x‖ * ‖y‖ := by
  sorry