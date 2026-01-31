import Mathlib

open Set

variable {E : Type _}

lemma dist_le_gronwallBound_of_norm_deriv_sub_right_le
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f f' : ℝ → E} {δ K ε a b : ℝ}
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ t ∈ Ico a b, HasDerivWithinAt f (f' t) (Ici t) t)
    (ha : ‖f a‖ ≤ δ)
    (bound : ∀ t ∈ Ico a b, ‖f' t‖ ≤ K * ‖f t‖ + ε) :
    ∀ t ∈ Icc a b, ‖f t‖ ≤ gronwallBound δ K ε (t - a) := by
  sorry