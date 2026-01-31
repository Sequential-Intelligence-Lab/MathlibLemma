import Mathlib

open scoped BigOperators

variable {𝕜 E F G : Type*}

/-- Composition rule for gradients on the left. -/
theorem HasGradientWithinAt.comp_left
    [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    {f : F → 𝕜} {g : E → F}
    {f' : F} {g' : E →L[𝕜] F}
    {s : Set F} {s' : Set E} {x : E}
    (hg : HasFDerivWithinAt g g' s' x)
    (hf : HasGradientWithinAt f f' s (g x)) :
    HasGradientWithinAt (fun y => f (g y)) (g'.adjoint f') s' x := by
  sorry