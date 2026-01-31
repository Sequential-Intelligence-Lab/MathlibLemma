import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 5. If a strict derivative exists at all points of a connected set and
the derivative is zero on this set, then the function is constant on this set. -/
lemma HasStrictFDerivAt.const_on_of_fderiv_eq_zero
    {f : E → F} {s : Set E}
    (hs : IsConnected s)
    (hf : ∀ x ∈ s, HasStrictFDerivAt f (0 : E →L[𝕜] F) x) :
    ∀ x ∈ s, ∀ y ∈ s, f x = f y := by
  sorry
