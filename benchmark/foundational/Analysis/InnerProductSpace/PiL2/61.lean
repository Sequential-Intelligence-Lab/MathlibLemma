import Mathlib

lemma Complex.orthonormalBasisOneI_inner_apply (z : ℂ) :
    (Inner.inner (𝕜 := ℝ) (Complex.orthonormalBasisOneI (0 : Fin 2)) z) = z.re := by
  sorry