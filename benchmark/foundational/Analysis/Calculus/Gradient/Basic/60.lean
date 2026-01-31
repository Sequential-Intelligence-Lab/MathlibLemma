import Mathlib

open scoped RealInnerProductSpace

variable
  {𝕜 E : Type*}
  [RCLike 𝕜]
  [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]

-- `HasGradientAt` is defined for scalar-valued functions on a Hilbert space.
-- We just state the lemma; the proof is left as `sorry`.
theorem HasGradientAt.hasGradientWithinAt
    {f : E → 𝕜} {f' : E} {s : Set E} {x : E}
    (h : HasGradientAt f f' x) :
    HasGradientWithinAt f f' s x := by
  sorry