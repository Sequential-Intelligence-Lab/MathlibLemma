import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 48. If a function is locally equal to its linearization, then it has the corresponding strict derivative. -/
lemma HasStrictFDerivAt.of_local_linear
    {f : E → F} {f' : E →L[𝕜] F} {x : E}
    (h : ∀ᶠ y in 𝓝 x, f y = f x + f' (y - x)) :
    HasStrictFDerivAt f f' x := by
  sorry
