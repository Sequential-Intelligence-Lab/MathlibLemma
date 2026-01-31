import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 74. Local inverse is locally bi-Lipschitz. -/
lemma HasStrictFDerivAt.localInverse_biLipschitz
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∃ s, s ∈ 𝓝 (f x) ∧ ∃ K ≥ (1 : ℝ),
      ∀ ⦃y z⦄, y ∈ s → z ∈ s →
        dist (hf.localInverse f f' x y) (hf.localInverse f f' x z)
        ≤ K * dist y z
        ∧ dist y z ≤ K * dist (hf.localInverse f f' x y) (hf.localInverse f f' x z) := by
  sorry