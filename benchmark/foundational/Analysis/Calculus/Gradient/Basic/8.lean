import Mathlib

open scoped BigOperators

variable {𝕜 F : Type*}
  [RCLike 𝕜]
  [NormedAddCommGroup F]
  [InnerProductSpace 𝕜 F]
  [NormedSpace 𝕜 F]
  [CompleteSpace F]

open Set

theorem HasGradientWithinAt.add
    {s : Set F} {x : F}
    {f₁ f₂ : F → 𝕜} {g₁ g₂ : F}
    (h₁ : HasGradientWithinAt f₁ g₁ s x)
    (h₂ : HasGradientWithinAt f₂ g₂ s x) :
    HasGradientWithinAt (fun y => f₁ y + f₂ y) (g₁ + g₂) s x := by
  sorry