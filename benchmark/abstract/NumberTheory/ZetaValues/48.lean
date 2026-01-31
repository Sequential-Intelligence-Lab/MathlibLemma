import Mathlib

lemma bernoulliFun_L2_norm (k : ℕ) :
    ∫ x in 0..1, (bernoulliFun k x)^2 =
      ∑' n : ℤ, ‖bernoulliFourierCoeff k n‖^2 := by
  sorry
