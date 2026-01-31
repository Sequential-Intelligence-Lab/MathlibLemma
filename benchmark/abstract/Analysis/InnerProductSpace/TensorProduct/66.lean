import Mathlib

lemma TensorProduct.orthonormal_tmul_real
    {E F : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    {ι₁ ι₂ : Type*}
    (b₁ : ι₁ → E) (b₂ : ι₂ → F)
    (hb₁ : Orthonormal ℝ b₁) (hb₂ : Orthonormal ℝ b₂) :
    Orthonormal ℝ (fun ij : ι₁ × ι₂ =>
      (b₁ ij.1) ⊗ₜ[ℝ] (b₂ ij.2)) := by
  sorry