import Mathlib

open scoped BigOperators
open RealInnerProductSpace
open scoped Gradient

variable {F} [NormedAddCommGroup F] [InnerProductSpace ℝ F] [CompleteSpace F]

-- We use `ℝ` as the codomain for the gradient.
variable {f g : F → ℝ} {x : F}

theorem gradient_sub
    (hf : DifferentiableAt ℝ f x)
    (hg : DifferentiableAt ℝ g x) :
    ∇ (fun y => f y - g y) x = ∇ f x - ∇ g x := by
  sorry