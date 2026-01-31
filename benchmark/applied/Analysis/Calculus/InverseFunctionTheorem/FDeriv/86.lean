import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 87. For a strictly differentiable function with invertible derivative, the Jacobian determinant at a point
is nonzero (finite-dimensional).  We restrict to the case `E = F` so that the derivative
is an endomorphism and its determinant is defined as a scalar in `𝕜`. -/
lemma HasStrictFDerivAt.det_ne_zero
    [FiniteDimensional 𝕜 E]
    [CompleteSpace E]
    {f : E → E} {f' : E ≃L[𝕜] E}
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] E) x) :
    (LinearMap.det (f' : E →ₗ[𝕜] E)) ≠ (0 : 𝕜) := by
  sorry