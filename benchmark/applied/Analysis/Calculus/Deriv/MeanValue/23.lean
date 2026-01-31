import Mathlib

open MeasureTheory

lemma deriv_pos_of_strictMonoOn_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hmono : StrictMonoOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    ∀ᵐ x ∂(Measure.restrict volume (Set.Ioo a b)), 0 ≤ deriv f x := by
  sorry