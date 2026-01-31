import Mathlib

theorem HilbertBasis.span_eq_top
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) :
    (Submodule.span 𝕜 (Set.range (b : ι → E))).topologicalClosure = ⊤ := by
  sorry