import Mathlib

/-- If the derivative of a real function is bounded by `K`, then the function is globally
Lipschitz with constant `K` (mean value theorem style). -/
lemma Lipschitz_of_deriv_bounded
    {f : ℝ → ℝ}
    (hf : Differentiable ℝ f)
    (hderiv : ∀ x, ‖deriv f x‖ ≤ 1) :
    LipschitzWith 1 f := by
  sorry
