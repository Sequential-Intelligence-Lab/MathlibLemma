import Mathlib

lemma exists_localExtrema_of_deriv_sign_change {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hf : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hpos : ∀ x ∈ Set.Ioo a ((a+b)/2), 0 < deriv f x)
    (hneg : ∀ x ∈ Set.Ioo ((a+b)/2) b, deriv f x < 0) :
    ∃ c ∈ Set.Ioo a b, IsLocalMax f c := by
  sorry
