import Mathlib

open scoped BigOperators

variable {E : Type _}

lemma norm_le_gronwallBound_of_norm_deriv_interval
    {f f' : ℝ → E} {δ K ε a b : ℝ}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (hf : ContinuousOn f (Set.Icc a b))
    (hd : DifferentiableOn ℝ f (Set.Icc a b))
    (hf' : ∀ x ∈ Set.Icc a b, f' x = deriv f x)
    (ha : ‖f a‖ ≤ δ)
    (bound : ∀ x ∈ Set.Icc a b, ‖deriv f x‖ ≤ K * ‖f x‖ + ε) :
    ∀ x ∈ Set.Icc a b, ‖f x‖ ≤ gronwallBound δ K ε (x - a) := by
  sorry