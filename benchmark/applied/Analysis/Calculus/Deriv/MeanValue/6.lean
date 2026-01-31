import Mathlib

lemma deriv_eq_zero_of_const_on_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hconst : ∀ x ∈ Set.Icc a b, f x = f a)
    (hfd : DifferentiableOn ℝ f (Set.Icc a b)) :
    ∀ x ∈ Set.Icc a b, deriv f x = 0 := by
  sorry
