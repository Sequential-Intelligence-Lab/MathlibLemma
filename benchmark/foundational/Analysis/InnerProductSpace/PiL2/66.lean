import Mathlib

lemma Pi.orthonormalBasis_orthonormal
    {𝕜 : Type*} [RCLike 𝕜]
    {η : Type*} [Fintype η] {ι : η → Type*} [∀ i, Fintype (ι i)]
    {E : η → Type*} [∀ i, NormedAddCommGroup (E i)]
    [∀ i, InnerProductSpace 𝕜 (E i)]
    (B : ∀ i, OrthonormalBasis (ι i) 𝕜 (E i)) :
    Orthonormal 𝕜 (Pi.orthonormalBasis B) := by
  sorry