import Mathlib

lemma norm_inner_eq_sqrt_real_inner_self
    {E : Type*} [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y : E) :
    ‖(inner (𝕜 := ℝ) x y : ℝ)‖ = Real.sqrt ((inner (𝕜 := ℝ) x y : ℝ) ^ 2) := by
  sorry