import Mathlib

open Complex Real

open scoped ComplexConjugate InnerProductSpace

lemma norm_inner_eq_sqrt_real_inner_self_complex {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℂ E]
    (x y : E) :
    ‖⟪x, y⟫_ℂ‖ =
      Real.sqrt ((Complex.re ⟪x, y⟫_ℂ : ℝ) ^ 2 +
        (Complex.im ⟪x, y⟫_ℂ : ℝ) ^ 2) := by
  sorry