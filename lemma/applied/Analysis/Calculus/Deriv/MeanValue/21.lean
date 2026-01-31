import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma strictMonoOn_of_deriv_pos_closure {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hf' : ∀ x ∈ Set.Ioo a b, 0 < deriv f x) :
    StrictMonoOn f (Set.Icc a b) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Icc a b → y ∈ Set.Icc a b → x < y → f x < f y := by
    intro x y hx hy hxy
    have h₁ : ContinuousOn f (Set.Icc x y) := by
      apply ContinuousOn.mono hfc
      intro z hz
      simp only [Set.mem_Icc] at hz ⊢
      constructor <;> (try cases' hx with hx₁ hx₂) <;> (try cases' hy with hy₁ hy₂) <;>
        (try cases' hz with hz₁ hz₂) <;>
        (try nlinarith)
      <;>
      (try linarith)
    have h₂ : DifferentiableOn ℝ f (Set.Ioo x y) := by
      apply DifferentiableOn.mono hfd
      intro z hz
      simp only [Set.mem_Ioo] at hz ⊢
      have h₃ : a < z := by
        (cases' hx with hx₁ hx₂) <;> (cases' hy with hy₁ hy₂) <;>
          (try nlinarith)
        <;>
        (try linarith)
      have h₄ : z < b := by
        (cases' hx with hx₁ hx₂) <;> (cases' hy with hy₁ hy₂) <;>
          (try nlinarith)
        <;>
        (try linarith)
      exact ⟨h₃, h₄⟩
    -- Apply the Mean Value Theorem
    have h₃ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
      have h₄ : ContinuousOn f (Set.Icc x y) := h₁
      have h₅ : DifferentiableOn ℝ f (Set.Ioo x y) := h₂
      have h₆ : x < y := hxy
      -- Use the Mean Value Theorem to find c in (x, y) such that deriv f c = (f y - f x) / (y - x)
      have h₇ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
        apply exists_deriv_eq_slope f
        <;> (try simp_all)
        <;> (try linarith)
      exact h₇
    obtain ⟨c, hc, hc'⟩ := h₃
    have h₄ : a < c := by
      have h₅ : x < c := hc.1
      have h₆ : c < y := hc.2
      (cases' hx with hx₁ hx₂) <;> (cases' hy with hy₁ hy₂) <;>
        (try nlinarith)
      <;>
      (try linarith)
    have h₅ : c < b := by
      have h₁ : x < c := hc.1
      have h₂ : c < y := hc.2
      (cases' hx with hx₁ hx₂) <;> (cases' hy with hy₁ hy₂) <;>
        (try nlinarith)
      <;>
      (try linarith)
    have h₆ : 0 < deriv f c := hf' c ⟨h₄, h₅⟩
    have h₇ : deriv f c = (f y - f x) / (y - x) := hc'
    have h₈ : (f y - f x) / (y - x) > 0 := by linarith
    have h₉ : y - x > 0 := by linarith
    have h₁₀ : f y - f x > 0 := by
      by_contra h
      have h₁₁ : f y - f x ≤ 0 := by linarith
      have h₁₂ : (f y - f x) / (y - x) ≤ 0 := by
        have h₁₃ : (y - x : ℝ) > 0 := by linarith
        have h₁₄ : (f y - f x : ℝ) ≤ 0 := by linarith
        have h₁₅ : (f y - f x) / (y - x) ≤ 0 := by
          exact div_nonpos_of_nonpos_of_nonneg h₁₄ (by linarith)
        exact h₁₅
      linarith
    linarith
  
  have h_final : StrictMonoOn f (Set.Icc a b) := by
    refine' fun x hx y hy hxy => _
    have h₁ : f x < f y := h_main x y hx hy hxy
    exact h₁
  
  exact h_final