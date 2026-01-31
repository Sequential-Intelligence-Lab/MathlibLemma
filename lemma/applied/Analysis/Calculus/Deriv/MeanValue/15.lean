import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exists_cIn_Ioc_with_deriv_eq_zero {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioc a b))
    (hneq : f a = f b) (hab : a < b) :
    ∃ c ∈ Set.Ioc a b, deriv f c = 0 := by
  -- Apply Rolle's Theorem to find a point c in the open interval (a, b) where the derivative is zero.
  have h₁ : ∃ c ∈ Set.Ioo a b, deriv f c = 0 := by
    -- Use the fact that f is continuous on [a, b] and differentiable on (a, b).
    apply exists_deriv_eq_zero
    -- Verify the conditions for Rolle's Theorem.
    <;> simp_all [Set.Icc, Set.Ioc, Set.mem_Icc, Set.mem_Ioc]
    -- Use the fact that f(a) = f(b) and a < b.
    <;> linarith
  -- Extract the point c from the existence statement.
  obtain ⟨c, hc, hc'⟩ := h₁
  -- Show that c is in the open interval (a, b).
  have hc'' : c ∈ Set.Ioc a b := by
    constructor
    <;> linarith [hc.1, hc.2]
  -- Conclude the proof by providing the point c and the derivative condition.
  exact ⟨c, hc'', hc'⟩