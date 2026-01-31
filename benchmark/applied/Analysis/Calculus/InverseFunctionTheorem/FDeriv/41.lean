import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology Metric

/-- 42. Local inverse is locally Lipschitz around the base point. -/
lemma HasStrictFDerivAt.localInverse_locallyLipschitz
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∃ r > (0 : ℝ), ∃ K ≥ (0 : ℝ),
      ∀ ⦃y z : F⦄,
        y ∈ ball (f x) r →
        z ∈ ball (f x) r →
        dist (hf.localInverse f f' x y) (hf.localInverse f f' x z)
          ≤ K * dist y z := by
  sorry