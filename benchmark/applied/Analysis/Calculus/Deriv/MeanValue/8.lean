import Mathlib

open MeasureTheory

lemma deriv_nonpos_of_antitoneOn_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hmono : AntitoneOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    ∀ᵐ x ∂(Measure.restrict volume (Set.Ioo a b)), deriv f x ≤ 0 := by
  sorry