import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma antitoneOn_of_deriv_nonpos_closure {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hf' : ∀ x ∈ Set.Ioo a b, deriv f x ≤ 0) :
    AntitoneOn f (Set.Icc a b) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Icc a b → y ∈ Set.Icc a b → x ≤ y → f x ≥ f y := by
    intro x y hx hy hxy
    by_cases h : x = y
    · -- Case x = y
      rw [h]
    · -- Case x < y
      have h₁ : x < y := by
        cases' lt_or_gt_of_ne h with h₂ h₂
        · exact h₂
        · exfalso
          linarith
      -- Apply the Mean Value Theorem
      have h₂ : ContinuousOn f (Set.Icc x y) := by
        apply ContinuousOn.mono hfc
        intro z hz
        simp only [Set.mem_Icc] at hz ⊢
        constructor <;> linarith [hx.1, hx.2, hy.1, hy.2]
      have h₃ : DifferentiableOn ℝ f (Set.Ioo x y) := by
        apply DifferentiableOn.mono hfd
        intro z hz
        simp only [Set.mem_Ioo] at hz ⊢
        constructor <;> linarith [hx.1, hx.2, hy.1, hy.2]
      -- Use the Mean Value Theorem to find c ∈ (x, y) such that f'(c) = (f(y) - f(x)) / (y - x)
      have h₄ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
        have h₅ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
          apply exists_deriv_eq_slope f
          <;> simp_all [h₁]
          <;> linarith
        exact h₅
      obtain ⟨c, hc, hc'⟩ := h₄
      -- Check that c ∈ (a, b)
      have h₅ : c ∈ Set.Ioo a b := by
        constructor <;> (try norm_num) <;>
          (try linarith [hx.1, hx.2, hy.1, hy.2, hc.1, hc.2]) <;>
          (try linarith)
      -- Use the given condition f'(c) ≤ 0
      have h₆ : deriv f c ≤ 0 := hf' c h₅
      -- Deduce (f(y) - f(x)) / (y - x) ≤ 0
      have h₇ : (f y - f x) / (y - x) ≤ 0 := by
        linarith
      -- Since y - x > 0, we get f(y) - f(x) ≤ 0
      have h₈ : y - x > 0 := by linarith
      have h₉ : f y - f x ≤ 0 := by
        have h₁₀ : (f y - f x) / (y - x) ≤ 0 := h₇
        have h₁₁ : (f y - f x) / (y - x) * (y - x) ≤ 0 * (y - x) := by
          gcongr
        have h₁₂ : (f y - f x) / (y - x) * (y - x) = f y - f x := by
          field_simp [h₈.ne']
          <;> ring
        rw [h₁₂] at h₁₁
        linarith
      -- Conclude f(x) ≥ f(y)
      linarith
  
  have h_final : AntitoneOn f (Set.Icc a b) := by
    refine' fun x hx y hy hxy => _
    have h₁ : f x ≥ f y := h_main x y hx hy hxy
    exact h₁
  
  exact h_final