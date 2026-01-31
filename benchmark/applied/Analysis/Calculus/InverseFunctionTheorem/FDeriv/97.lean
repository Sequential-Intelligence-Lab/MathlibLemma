import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 98. If `f` has strictly invertible derivative at all points and is `C^1`, its local inverses are `C^1`. -/
lemma HasStrictFDerivAt.localInverse_contDiff_one
    [CompleteSpace E]
    {f : E → F} {f' : E → E ≃L[𝕜] F}
    (hf : ∀ x, HasStrictFDerivAt f (f' x : E →L[𝕜] F) x)
    (hcont : ContDiff 𝕜 1 f) :
    ∀ x, ContDiffAt 𝕜 1 (fun y => (hf x).localInverse f (f' x) x y) (f x) := by
  sorry
