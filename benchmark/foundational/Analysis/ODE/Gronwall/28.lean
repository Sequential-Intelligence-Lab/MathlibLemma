import Mathlib

lemma le_gronwallBound_of_liminf_deriv_right_le'
    {f f' : ℝ → ℝ} {δ K ε a b : ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (hf' : ∀ x ∈ Set.Ico a b, HasDerivWithinAt f (f' x) (Set.Ici x) x)
    (ha : f a ≤ δ)
    (bound : ∀ x ∈ Set.Ico a b, f' x ≤ K * f x + ε) :
    ∀ x ∈ Set.Icc a b, f x ≤ gronwallBound δ K ε (x - a) := by
  sorry