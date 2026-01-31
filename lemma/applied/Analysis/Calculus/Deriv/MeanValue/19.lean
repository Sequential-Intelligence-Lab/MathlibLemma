import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma monotoneOn_of_deriv_nonneg_closure {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hf' : ∀ x ∈ Set.Ioo a b, 0 ≤ deriv f x) :
    MonotoneOn f (Set.Icc a b) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Icc a b → y ∈ Set.Icc a b → x < y → f x ≤ f y := by
    intro x y hx hy hxy
    have h₁ : ContinuousOn f (Set.Icc x y) := by
      apply ContinuousOn.mono hfc
      intro z hz
      simp only [Set.mem_Icc] at hz ⊢
      constructor <;> (try constructor) <;>
        (try nlinarith [hx.1, hx.2, hy.1, hy.2]) <;>
        (try linarith)
    have h₂ : DifferentiableOn ℝ f (Set.Ioo x y) := by
      apply DifferentiableOn.mono hfd
      intro z hz
      simp only [Set.mem_Ioo] at hz ⊢
      constructor <;> (try constructor) <;>
        (try nlinarith [hx.1, hx.2, hy.1, hy.2]) <;>
        (try linarith)
    -- Apply the Mean Value Theorem
    have h₃ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
      have h₄ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
        -- Use the Mean Value Theorem for derivatives
        have h₅ : ContinuousOn f (Set.Icc x y) := h₁
        have h₆ : DifferentiableOn ℝ f (Set.Ioo x y) := h₂
        have h₇ : x < y := hxy
        -- Apply the Mean Value Theorem
        have h₈ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
          apply exists_deriv_eq_slope f
          <;> (try simp_all)
          <;> linarith
        exact h₈
      exact h₄
    -- Obtain the point c from the Mean Value Theorem
    obtain ⟨c, hc, hc'⟩ := h₃
    -- Show that c is in (a, b)
    have h₄ : c ∈ Set.Ioo a b := by
      have h₅ : x ∈ Set.Icc a b := hx
      have h₆ : y ∈ Set.Icc a b := hy
      have h₇ : c ∈ Set.Ioo x y := hc
      have h₈ : a ≤ x := hx.1
      have h₉ : x ≤ b := hx.2
      have h₁₀ : a ≤ y := hy.1
      have h₁₁ : y ≤ b := hy.2
      have h₁₂ : x < c := hc.1
      have h₁₃ : c < y := hc.2
      have h₁₄ : a < c := by
        by_contra h
        have h₁₅ : c ≤ a := by linarith
        have h₁₆ : x < a := by linarith
        have h₁₇ : a ≤ x := hx.1
        linarith
      have h₁₅ : c < b := by
        by_contra h
        have h₁₆ : c ≥ b := by linarith
        have h₁₇ : y > b := by linarith
        have h₁₈ : y ≤ b := hy.2
        linarith
      exact ⟨h₁₄, h₁₅⟩
    -- Use the fact that the derivative is non-negative
    have h₅ : 0 ≤ deriv f c := hf' c h₄
    -- Derive the inequality f x ≤ f y
    have h₆ : (f y - f x) / (y - x) = deriv f c := by
      rw [hc']
    have h₇ : 0 < y - x := by linarith
    have h₈ : (f y - f x) / (y - x) ≥ 0 := by
      rw [h₆]
      exact h₅
    have h₉ : f y - f x ≥ 0 := by
      have h₁₀ : (f y - f x) / (y - x) ≥ 0 := h₈
      have h₁₁ : 0 < y - x := by linarith
      have h₁₂ : f y - f x = (y - x) * ((f y - f x) / (y - x)) := by
        field_simp [h₁₁.ne']
        <;> ring
      rw [h₁₂]
      have h₁₃ : (y - x : ℝ) > 0 := by exact_mod_cast h₁₁
      have h₁₄ : (f y - f x : ℝ) / (y - x) ≥ 0 := by exact_mod_cast h₈
      nlinarith
    linarith
  
  have h_monotone : MonotoneOn f (Set.Icc a b) := by
    intro x hx y hy hxy
    by_cases h : x = y
    · -- If x = y, then f(x) = f(y) trivially
      simp_all
    · -- If x ≠ y, then x < y since x ≤ y
      have h₁ : x < y := by
        cases' lt_or_gt_of_ne h with h₂ h₂
        · exact h₂
        · exfalso
          linarith [hx.1, hx.2, hy.1, hy.2]
      -- Use the main result to get f(x) ≤ f(y)
      have h₂ : f x ≤ f y := h_main x y hx hy h₁
      exact h₂
  
  exact h_monotone