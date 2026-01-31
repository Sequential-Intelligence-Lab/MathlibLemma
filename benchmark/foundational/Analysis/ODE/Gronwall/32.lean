import Mathlib

open scoped BigOperators
open Set
open Interval

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

lemma dist_le_gronwallBound_of_dist_deriv_right_le
    {f g f' g' : ℝ → E} {δ K ε a b : ℝ}
    (hf : ContinuousOn f (Icc a b)) (hg : ContinuousOn g (Icc a b))
    (hf' : ∀ t ∈ Ico a b, HasDerivWithinAt f (f' t) (Ici t) t)
    (hg' : ∀ t ∈ Ico a b, HasDerivWithinAt g (g' t) (Ici t) t)
    (ha : dist (f a) (g a) ≤ δ)
    (bound :
      ∀ t ∈ Ico a b,
        dist (f' t) (g' t) ≤ K * dist (f t) (g t) + ε) :
    ∀ t ∈ Icc a b, dist (f t) (g t) ≤ gronwallBound δ K ε (t - a) := by
  sorry