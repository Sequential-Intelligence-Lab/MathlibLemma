import Mathlib

variable {𝕜 F : Type _}
  [RCLike 𝕜]
  [NormedAddCommGroup F]
  [InnerProductSpace 𝕜 F]
  [CompleteSpace F]

variable {x : F}

theorem HasGradientAt.sub
    {f₁ f₂ : F → 𝕜} {g₁ g₂ : F}
    (h₁ : HasGradientAt f₁ g₁ x) (h₂ : HasGradientAt f₂ g₂ x) :
    HasGradientAt (fun y => f₁ y - f₂ y) (g₁ - g₂) x := by
  sorry