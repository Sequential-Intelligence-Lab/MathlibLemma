import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exists_cIn_Icc_with_deriv_eq_zero {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hneq : f a = f b) (hab : a < b) :
    ∃ c ∈ Set.Ioo a b, deriv f c = 0 := by
  -- Apply the Extreme Value Theorem to find a point c in (a, b) where the derivative is zero.
  have h₁ : ∃ c ∈ Set.Ioo a b, deriv f c = 0 := by
    -- Use the fact that f is continuous and differentiable to apply the theorem.
    apply exists_deriv_eq_zero
    -- Verify the conditions for the theorem.
    <;> simp_all [Set.Ioo, Set.Icc]
    -- Use the given conditions to conclude the proof.
    <;> linarith
  -- Conclude the proof by providing the point c and verifying the conditions.
  simpa using h₁