import Mathlib

set_option quotPrecheck false

open scoped BigOperators

section

variable {E : Type _}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [CompleteSpace E]

-- We assume gradients are taken for real scalar-valued functions
variable {f : E → ℝ} {x : E}

-- Declare a generic gradient operator
variable (grad : (E → ℝ) → E → E)

-- Notation for the gradient operator
notation "∇" => grad

theorem gradient_inv (hf : DifferentiableAt ℝ f x) (hx : f x ≠ 0) :
    ∇ (fun y => (f y)⁻¹) x = - (f x) ^ (-2 : ℤ) • ∇ f x := by
  sorry

end