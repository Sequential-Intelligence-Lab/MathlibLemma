import Mathlib

theorem HilbertBasis.repr_measurable
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [MeasurableSpace E]
    [BorelSpace E]
    [MeasurableSpace (lp (fun _ : ι => 𝕜) 2)]
    (b : HilbertBasis ι 𝕜 E) :
    Measurable b.repr := by
  sorry