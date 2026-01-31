import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exists_hasDerivAt_eq_slope_interior {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hf : ContinuousOn f (Set.Icc a b))
    (hfd : ∀ x ∈ Set.Icc a b, HasDerivAt f (deriv f x) x) :
    ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
  have h_diff : DifferentiableOn ℝ f (Set.Ioo a b) := by
    intro x hx
    have h₁ : x ∈ Set.Icc a b := by
      constructor <;>
      (try cases' hx with hx₁ hx₂) <;>
      (try linarith) <;>
      (try exact hx₁.le) <;>
      (try exact hx₂.le)
    have h₂ : HasDerivAt f (deriv f x) x := hfd x h₁
    have h₃ : DifferentiableAt ℝ f x := h₂.differentiableAt
    exact h₃.differentiableWithinAt
  
  have h_main : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
    have h₁ : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
      -- Apply the Mean Value Theorem
      have h₂ : ContinuousOn f (Set.Icc a b) := hf
      have h₃ : DifferentiableOn ℝ f (Set.Ioo a b) := h_diff
      have h₄ : a < b := hab
      -- Use the Mean Value Theorem to find a point c in (a, b) where the derivative equals the average rate of change
      have h₅ : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
        apply exists_deriv_eq_slope f
        <;> simp_all
        <;>
          (try norm_num) <;>
          (try linarith) <;>
          (try assumption)
      exact h₅
    exact h₁
  
  exact h_main