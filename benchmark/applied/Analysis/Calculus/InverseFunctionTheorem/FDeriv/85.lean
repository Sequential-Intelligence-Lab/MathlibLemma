import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 86. Strict derivative at a point and a local left inverse implies uniqueness of the left inverse. -/
lemma HasStrictFDerivAt.left_inverse_unique
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E} {g₁ g₂ : F → E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x)
    (h₁ : ∀ᶠ y in 𝓝 x, g₁ (f y) = y)
    (h₂ : ∀ᶠ y in 𝓝 x, g₂ (f y) = y) :
    ∀ᶠ y in 𝓝 (f x), g₁ y = g₂ y := by
  sorry
