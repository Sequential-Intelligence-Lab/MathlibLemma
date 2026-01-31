import Mathlib

open scoped BigOperators

variable {F : Type _} [NormedAddCommGroup F] [InnerProductSpace ℝ F] [CompleteSpace F]

open Real

theorem HasGradientAt.div
    {f g : F → ℝ} {gf gg : F} {x : F}
    (hf : HasGradientAt f gf x)
    (hg : HasGradientAt g gg x)
    (hx : g x ≠ 0) :
    HasGradientAt (fun y => f y / g y)
      ((g x)⁻¹ • gf - (f x / (g x)^2) • gg) x := by
  sorry