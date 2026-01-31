import Mathlib

variable {𝕜 F : Type _} [RCLike 𝕜]
  [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
  [CompleteSpace F]

open scoped BigOperators

theorem HasGradientWithinAt.mul
    {f₁ f₂ : F → 𝕜} {g₁ g₂ : F} {s : Set F} {x : F}
    (h₁ : HasGradientWithinAt f₁ g₁ s x)
    (h₂ : HasGradientWithinAt f₂ g₂ s x) :
    HasGradientWithinAt (fun y => f₁ y * f₂ y)
      (f₂ x • g₁ + f₁ x • g₂) s x := by
  sorry