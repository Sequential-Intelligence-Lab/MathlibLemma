import Mathlib

open MeasureTheory

lemma deriv_neg_of_strictAntiOn_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hmono : StrictAntiOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    ∀ᵐ x ∂(volume.restrict (Set.Ioo a b)), deriv f x ≤ 0 := by
  sorry