import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 32. If `f` has strict derivative with invertible derivative on an open set `s`, then `f` is an open map on `s`. -/
lemma HasStrictFDerivAt.isOpenMap_on
    [CompleteSpace E]
    {f : E → F} {s : Set E}
    (hs : IsOpen s)
    (hf : ∀ x ∈ s, ∃ f' : E ≃L[𝕜] F, HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    IsOpenMap (fun x : s => f x) := by
  sorry
