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
  classical
  -- Consider the underlying linear maps of `f'` and its inverse.
  let L : E →ₗ[𝕜] E := (f' : E ≃L[𝕜] E)
  let M : E →ₗ[𝕜] E := (f'.symm : E ≃L[𝕜] E)

  -- The composition `L ∘ M` is the identity.
  have hcomp : L.comp M = LinearMap.id := by
    ext x
    simp [L, M]

  -- Determinant is multiplicative on composition.
  have hdet_comp : LinearMap.det (L.comp M) = LinearMap.det L * LinearMap.det M :=
    LinearMap.det_comp L M

  -- Use that `L.comp M = id` and `det id = 1`.
  have hone : (1 : 𝕜) = LinearMap.det L * LinearMap.det M := by
    simpa [hcomp, LinearMap.det_id] using hdet_comp

  -- Hence the product is nonzero, so each factor is nonzero.
  have hmul_ne_zero : LinearMap.det L * LinearMap.det M ≠ (0 : 𝕜) := by
    simpa [hone.symm] using (one_ne_zero : (1 : 𝕜) ≠ 0)

  have hdetL_ne_zero : LinearMap.det L ≠ (0 : 𝕜) :=
    (mul_ne_zero_iff.mp hmul_ne_zero).1

  -- Rewrite back in terms of `f'`.
  simpa [L] using hdetL_ne_zero