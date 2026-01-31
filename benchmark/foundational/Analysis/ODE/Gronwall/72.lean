import Mathlib

open Set

variable {E : Type*}

/-- Gronwall lemma (right-derivative version), statement only; proof omitted. -/
lemma norm_le_gronwallBound_of_norm_deriv_right_le_nonnegK
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f f' : ℝ → E} {δ K ε a b : ℝ}
    (hK : 0 ≤ K)
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ x ∈ Ico a b, HasDerivWithinAt f (f' x) (Ici x) x)
    (ha : ‖f a‖ ≤ δ)
    (bound : ∀ x ∈ Ico a b, ‖f' x‖ ≤ K * ‖f x‖ + ε) :
    ∀ x ∈ Icc a b, ‖f x‖ ≤ gronwallBound δ K ε (x - a) := by
  sorry