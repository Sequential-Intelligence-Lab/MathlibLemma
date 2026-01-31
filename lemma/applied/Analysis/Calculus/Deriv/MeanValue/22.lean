import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma strictAntiOn_of_deriv_neg_closure {f : ℝ → ℝ} {a b : ℝ}
    (hfc : ContinuousOn f (Set.Icc a b))
    (hfd : DifferentiableOn ℝ f (Set.Ioo a b))
    (hf' : ∀ x ∈ Set.Ioo a b, deriv f x < 0) :
    StrictAntiOn f (Set.Icc a b) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Icc a b → y ∈ Set.Icc a b → x < y → f x > f y := by
    intro x y hx hy hxy
    have h₁ : ContinuousOn f (Set.Icc x y) := by
      apply ContinuousOn.mono hfc
      intro z hz
      simp only [Set.mem_Icc] at hz ⊢
      constructor <;>
      (try cases' hx with hx₁ hx₂) <;>
      (try cases' hy with hy₁ hy₂) <;>
      (try cases' hz with hz₁ hz₂) <;>
      (try linarith) <;>
      (try nlinarith)
      <;>
      (try
        {
          simp_all [Set.mem_Icc]
          <;>
          (try constructor <;> linarith)
        })
    have h₂ : DifferentiableOn ℝ f (Set.Ioo x y) := by
      apply DifferentiableOn.mono hfd
      intro z hz
      simp only [Set.mem_Ioo] at hz ⊢
      constructor <;>
      (try cases' hx with hx₁ hx₂) <;>
      (try cases' hy with hy₁ hy₂) <;>
      (try cases' hz with hz₁ hz₂) <;>
      (try linarith) <;>
      (try nlinarith)
      <;>
      (try
        {
          simp_all [Set.mem_Ioo]
          <;>
          (try constructor <;> linarith)
        })
    -- Apply the Mean Value Theorem
    have h₃ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
      have h₄ : ContinuousOn f (Set.Icc x y) := h₁
      have h₅ : DifferentiableOn ℝ f (Set.Ioo x y) := h₂
      have h₆ : x < y := hxy
      -- Use the Mean Value Theorem to find c in (x, y)
      have h₇ : ∃ c ∈ Set.Ioo x y, deriv f c = (f y - f x) / (y - x) := by
        apply exists_deriv_eq_slope f
        <;>
        (try simp_all) <;>
        (try linarith)
        <;>
        (try assumption)
        <;>
        (try
          {
            simp_all [Set.mem_Ioo]
            <;>
            linarith
          })
      exact h₇
    obtain ⟨c, hc, hc'⟩ := h₃
    have h₄ : c ∈ Set.Ioo a b := by
      have h₅ : c ∈ Set.Ioo x y := hc
      have h₆ : x ∈ Set.Icc a b := hx
      have h₇ : y ∈ Set.Icc a b := hy
      have h₈ : x < c := by
        cases' h₅ with h₅₁ h₅₂
        linarith
      have h₉ : c < y := by
        cases' h₅ with h₅₁ h₅₂
        linarith
      have h₁₀ : a ≤ x := by
        cases' hx with hx₁ hx₂
        linarith
      have h₁₁ : y ≤ b := by
        cases' hy with hy₁ hy₂
        linarith
      have h₁₂ : a < c := by
        cases' hx with hx₁ hx₂
        cases' h₅ with h₅₁ h₅₂
        linarith
      have h₁₃ : c < b := by
        cases' hy with hy₁ hy₂
        cases' h₅ with h₅₁ h₅₂
        linarith
      exact ⟨h₁₂, h₁₃⟩
    have h₅ : deriv f c < 0 := hf' c h₄
    have h₆ : (f y - f x) / (y - x) < 0 := by
      have h₇ : deriv f c = (f y - f x) / (y - x) := hc'
      rw [← h₇]
      exact h₅
    have h₇ : y - x > 0 := by linarith
    have h₈ : f y - f x < 0 := by
      have h₉ : (f y - f x) / (y - x) < 0 := h₆
      have h₁₀ : 0 < y - x := by linarith
      have h₁₁ : (f y - f x) / (y - x) * (y - x) < 0 * (y - x) := by
        nlinarith
      have h₁₂ : (f y - f x) / (y - x) * (y - x) = f y - f x := by
        field_simp [h₁₀.ne']
        <;> ring
      rw [h₁₂] at h₁₁
      linarith
    linarith
  
  have h_final : StrictAntiOn f (Set.Icc a b) := by
    refine' fun x hx y hy hxy => _
    have h₁ : f x > f y := h_main x y hx hy hxy
    linarith
  
  exact h_final