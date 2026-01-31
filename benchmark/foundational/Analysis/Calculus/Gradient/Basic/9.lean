import Mathlib

variable {𝕜 F : Type*}

theorem HasGradientWithinAt.sub
    [RCLike 𝕜] [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
    {f₁ f₂ : F → 𝕜} {g₁ g₂ : F} {s : Set F} {x : F}
    (h₁ : HasGradientWithinAt f₁ g₁ s x)
    (h₂ : HasGradientWithinAt f₂ g₂ s x) :
    HasGradientWithinAt (fun y => f₁ y - f₂ y) (g₁ - g₂) s x := by
  sorry