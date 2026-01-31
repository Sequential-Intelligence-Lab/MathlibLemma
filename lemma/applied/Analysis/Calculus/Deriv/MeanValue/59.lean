import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exist_c_between_deriv_bounds {f : ℝ → ℝ} {a b : ℝ} {m M : ℝ}
    (hab : a < b)
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hbound : ∀ x ∈ Set.Ioo a b, m ≤ deriv f x ∧ deriv f x ≤ M) :
    m * (b - a) ≤ f b - f a ∧ f b - f a ≤ M * (b - a) := by
  have h_mvt : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
    have h₁ : ContinuousOn f (Set.Icc a b) := hfc
    have h₂ : DifferentiableOn ℝ f (Set.Ioo a b) := hfd
    -- Apply the Mean Value Theorem to find a point c in (a, b) where the derivative equals (f(b) - f(a)) / (b - a)
    have h₃ : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
      -- Use the Mean Value Theorem from the library
      have h₄ : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
        -- Apply the Mean Value Theorem for derivatives
        have h₅ : ContinuousOn f (Set.Icc a b) := hfc
        have h₆ : DifferentiableOn ℝ f (Set.Ioo a b) := hfd
        -- Use the Mean Value Theorem from the library
        have h₇ : ∃ c ∈ Set.Ioo a b, deriv f c = (f b - f a) / (b - a) := by
          apply exists_deriv_eq_slope f
          <;> simp_all [hab]
          <;> linarith
        exact h₇
      exact h₄
    exact h₃
  
  have h_main : m * (b - a) ≤ f b - f a ∧ f b - f a ≤ M * (b - a) := by
    obtain ⟨c, ⟨hc₁, hc₂⟩, hc₃⟩ := h_mvt
    have h₁ : m ≤ deriv f c := (hbound c ⟨hc₁, hc₂⟩).1
    have h₂ : deriv f c ≤ M := (hbound c ⟨hc₁, hc₂⟩).2
    have h₃ : deriv f c = (f b - f a) / (b - a) := hc₃
    have h₄ : m ≤ (f b - f a) / (b - a) := by linarith
    have h₅ : (f b - f a) / (b - a) ≤ M := by linarith
    have h₆ : 0 < b - a := by linarith
    have h₇ : m * (b - a) ≤ f b - f a := by
      -- Multiply both sides of the inequality m ≤ (f b - f a) / (b - a) by (b - a)
      have h₇₁ : m * (b - a) ≤ ((f b - f a) / (b - a)) * (b - a) := by
        -- Since (b - a) > 0, the inequality direction remains the same
        have h₇₂ : m ≤ (f b - f a) / (b - a) := h₄
        have h₇₃ : 0 < b - a := h₆
        nlinarith
      -- Simplify the right-hand side
      have h₇₄ : ((f b - f a) / (b - a)) * (b - a) = f b - f a := by
        field_simp [h₆.ne']
        <;> ring
      linarith
    have h₈ : f b - f a ≤ M * (b - a) := by
      -- Multiply both sides of the inequality (f b - f a) / (b - a) ≤ M by (b - a)
      have h₈₁ : ((f b - f a) / (b - a)) * (b - a) ≤ M * (b - a) := by
        -- Since (b - a) > 0, the inequality direction remains the same
        have h₈₂ : (f b - f a) / (b - a) ≤ M := h₅
        have h₈₃ : 0 < b - a := h₆
        nlinarith
      -- Simplify the left-hand side
      have h₈₄ : ((f b - f a) / (b - a)) * (b - a) = f b - f a := by
        field_simp [h₆.ne']
        <;> ring
      linarith
    exact ⟨h₇, h₈⟩
  
  exact h_main