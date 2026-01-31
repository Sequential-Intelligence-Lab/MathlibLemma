import Mathlib

/-- If `f : ℝ → ℝ` is differentiable and its derivative is bounded, then `f` is Lipschitz. -/
lemma Lipschitz_of_deriv_bounded'
    {f : ℝ → ℝ}
    (hf : Differentiable ℝ f)
    (hderiv : ∀ x, |deriv f x| ≤ 1) :
    LipschitzWith 1 f := by
  sorry
