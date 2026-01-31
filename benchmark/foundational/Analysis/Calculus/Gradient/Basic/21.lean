import Mathlib

open scoped Classical

universe u v

variable {𝕜 : Type u} {F : Type v}

theorem HasGradientAtFilter.mul
    [RCLike 𝕜]
    [NormedAddCommGroup F]
    [InnerProductSpace 𝕜 F]
    [NormedSpace 𝕜 F]
    [CompleteSpace F]
    {f₁ f₂ : F → 𝕜} {g₁ g₂ : F} {x : F} {L : Filter F}
    (h₁ : HasGradientAtFilter f₁ g₁ x L)
    (h₂ : HasGradientAtFilter f₂ g₂ x L) :
    HasGradientAtFilter (fun y => f₁ y * f₂ y)
      (f₂ x • g₁ + f₁ x • g₂) x L := by
  sorry