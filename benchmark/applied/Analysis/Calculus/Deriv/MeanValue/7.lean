import Mathlib

open MeasureTheory

lemma deriv_nonneg_of_monotoneOn_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hmono : MonotoneOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b)) :
    ∀ᵐ x ∂(MeasureTheory.volume.restrict (Set.Ioo a b)), 0 ≤ deriv f x := by
  sorry