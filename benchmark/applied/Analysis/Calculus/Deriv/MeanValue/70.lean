import Mathlib

lemma strictMonoOn_of_integral_pos_deriv {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hfC : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hint : ∀ x y, a ≤ x → x < y → y ≤ b →
      0 < ∫ t in x..y, deriv f t) :
    StrictMonoOn f (Set.Icc a b) := by
  sorry
