import Mathlib

open scoped Interval
open MeasureTheory

lemma deriv_eq_zero_ae_of_constantOn_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hconst :
      ∀ᵐ x ∂(volume.restrict (Set.Icc a b)), f x = f a)
    (hfd : DifferentiableOn ℝ f (Set.Icc a b)) :
    ∀ᵐ x ∂(volume.restrict (Set.Ioo a b)), deriv f x = 0 := by
  sorry