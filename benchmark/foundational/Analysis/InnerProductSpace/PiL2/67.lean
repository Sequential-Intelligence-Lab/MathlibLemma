import Mathlib

lemma Pi.orthonormalBasis_span_eq
    {η : Type*} [Fintype η]
    {ι : η → Type*} [∀ i, Fintype (ι i)]
    {E : η → Type*} [∀ i, NormedAddCommGroup (E i)]
    [∀ i, InnerProductSpace ℝ (E i)]
    (B : ∀ i, OrthonormalBasis (ι i) ℝ (E i)) :
    Submodule.span ℝ (Set.range (Pi.orthonormalBasis B)) = ⊤ := by
  sorry