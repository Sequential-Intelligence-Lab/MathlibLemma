import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.exp_tendsto_atBot :
    Filter.Tendsto Real.exp Filter.atBot (nhds (0 : ℝ)) := by
  have h_id : ∀ (x : ℝ), Real.exp x = 1 / Real.exp (-x) := by
    intro x
    have h₁ : Real.exp x * Real.exp (-x) = 1 := by
      rw [← Real.exp_add]
      ring_nf
      <;> simp [Real.exp_zero]
    have h₂ : Real.exp (-x) > 0 := Real.exp_pos (-x)
    have h₃ : Real.exp x = 1 / Real.exp (-x) := by
      field_simp [h₂.ne'] at h₁ ⊢
      <;> nlinarith [Real.exp_pos x]
    exact h₃
  
  have h_neg : Filter.Tendsto (fun x : ℝ => -x) Filter.atBot Filter.atTop := by
    apply Filter.tendsto_neg_atBot_atTop
  
  have h_exp_atTop : Filter.Tendsto Real.exp Filter.atTop Filter.atTop := by
    exact Real.tendsto_exp_atTop
  
  have h_exp_neg : Filter.Tendsto (fun x : ℝ => Real.exp (-x)) Filter.atBot Filter.atTop := by
    have h₁ : Filter.Tendsto (fun x : ℝ => -x) Filter.atBot Filter.atTop := h_neg
    have h₂ : Filter.Tendsto Real.exp Filter.atTop Filter.atTop := h_exp_atTop
    have h₃ : Filter.Tendsto (fun x : ℝ => Real.exp (-x)) Filter.atBot Filter.atTop :=
      h₂.comp h₁
    exact h₃
  
  have h_inv : Filter.Tendsto (fun y : ℝ => (1 : ℝ) / y) Filter.atTop (nhds 0) := by
    have h : Filter.Tendsto (fun y : ℝ => (y : ℝ)⁻¹) Filter.atTop (nhds 0) := by
      simpa using tendsto_inv_atTop_zero
    have h₁ : (fun y : ℝ => (1 : ℝ) / y) = (fun y : ℝ => (y : ℝ)⁻¹) := by
      funext y
      <;> field_simp
      <;> ring_nf
    rw [h₁]
    exact h
  
  have h_exp_inv : Filter.Tendsto (fun x : ℝ => (1 : ℝ) / Real.exp (-x)) Filter.atBot (nhds 0) := by
    have h₁ : Filter.Tendsto (fun x : ℝ => Real.exp (-x)) Filter.atBot Filter.atTop := h_exp_neg
    have h₂ : Filter.Tendsto (fun y : ℝ => (1 : ℝ) / y) Filter.atTop (nhds 0) := h_inv
    have h₃ : Filter.Tendsto (fun x : ℝ => (1 : ℝ) / Real.exp (-x)) Filter.atBot (nhds 0) := h₂.comp h₁
    exact h₃
  
  have h_main : Filter.Tendsto Real.exp Filter.atBot (nhds (0 : ℝ)) := by
    have h₁ : Filter.Tendsto (fun x : ℝ => (1 : ℝ) / Real.exp (-x)) Filter.atBot (nhds 0) := h_exp_inv
    have h₂ : ∀ (x : ℝ), Real.exp x = (1 : ℝ) / Real.exp (-x) := by
      intro x
      rw [h_id]
      <;> field_simp
    have h₃ : Filter.Tendsto Real.exp Filter.atBot (nhds (0 : ℝ)) := by
      have h₄ : Real.exp = (fun x : ℝ => (1 : ℝ) / Real.exp (-x)) := by
        funext x
        rw [h₂]
      rw [h₄]
      exact h₁
    exact h₃
  
  exact h_main