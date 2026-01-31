import Mathlib

lemma derivWithin_pos_of_strictMonoOn {f : ℝ → ℝ} {D : Set ℝ}
    (hmono : StrictMonoOn f D)
    (hopen : IsOpen D)
    (hfd : DifferentiableOn ℝ f D) :
    ∀ x ∈ D, 0 ≤ deriv f x := by
  sorry
