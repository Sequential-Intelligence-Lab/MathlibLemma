import Mathlib

open scoped BigOperators

/-- Product rule for gradients. -/
theorem HasGradientAt.mul
    {𝕜 F : Type _}
    [RCLike 𝕜]
    [NormedAddCommGroup F]
    [NormedSpace 𝕜 F]
    [InnerProductSpace 𝕜 F]
    [CompleteSpace F]
    {f₁ f₂ : F → 𝕜} {g₁ g₂ : F} {x : F}
    (h₁ : HasGradientAt f₁ g₁ x) (h₂ : HasGradientAt f₂ g₂ x) :
    HasGradientAt (fun y => f₁ y * f₂ y)
      (f₂ x • g₁ + f₁ x • g₂) x := by
  sorry