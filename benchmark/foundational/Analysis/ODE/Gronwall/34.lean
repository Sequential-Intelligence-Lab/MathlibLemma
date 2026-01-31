import Mathlib

lemma eq_zero_of_norm_deriv_le_mul_norm_of_eq_zero_right'
    {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f f' : ℝ → E} {K a b : ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (hf' : ∀ x ∈ Set.Icc a b, HasDerivAt f (f' x) x)
    (ha : f a = 0)
    (bound : ∀ x ∈ Set.Icc a b, ‖f' x‖ ≤ K * ‖f x‖) :
    ∀ x ∈ Set.Icc a b, f x = 0 := by
  sorry