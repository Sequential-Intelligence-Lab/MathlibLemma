import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 97. Local inverse is smooth if `f` is smooth and has strictly invertible derivative everywhere. -/
lemma HasStrictFDerivAt.localInverse_contDiff
    [CompleteSpace E]
    {f : E → F} {f' : E → E ≃L[𝕜] F}
    (hf : ∀ x, HasStrictFDerivAt f (f' x : E →L[𝕜] F) x)
    (hcont : ContDiff 𝕜 n f) :
    ∀ x, ContDiffAt 𝕜 n (fun y => (hf x).localInverse f (f' x) x y) (f x) := by
  sorry
