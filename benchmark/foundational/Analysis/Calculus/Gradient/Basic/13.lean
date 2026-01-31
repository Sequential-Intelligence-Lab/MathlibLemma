import Mathlib

open scoped BigOperators

variable {𝕜 E : Type _}
variable [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- A dummy gradient, just to make the lemma statement typecheck. -/
noncomputable def grad (f : E → 𝕜) (x : E) : E := by
  classical
  exact 0

/--
Gradient of `-f` is `-` the gradient of `f` at a point `x`.
We assume differentiability at `x`.
-/
theorem gradient_neg
    (f : E → 𝕜) (x : E)
    (hf : DifferentiableAt 𝕜 f x) :
    grad (fun y => - f y) x = - grad f x := by
  sorry