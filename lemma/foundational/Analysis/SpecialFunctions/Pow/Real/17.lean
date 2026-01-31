import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_strictMonoOn_Ioi {r : ℝ} (hr : 0 < r) :
    StrictMonoOn (fun x : ℝ => x ^ r) (Set.Ioi 0) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Ioi (0 : ℝ) → y ∈ Set.Ioi (0 : ℝ) → x < y → x ^ r < y ^ r := by
    intro x y hx hy hxy
    have hx' : 0 < x := by exact Set.mem_Ioi.mp hx
    have hy' : 0 < y := by exact Set.mem_Ioi.mp hy
    have h₁ : Real.log x < Real.log y := Real.log_lt_log hx' hxy
    have h₂ : r * Real.log x < r * Real.log y := by
      -- Multiply both sides of the inequality by r > 0
      have h₃ : 0 < r := hr
      have h₄ : Real.log x < Real.log y := h₁
      nlinarith
    -- Use the fact that the exponential function is strictly increasing
    have h₃ : Real.exp (r * Real.log x) < Real.exp (r * Real.log y) := Real.exp_lt_exp.mpr h₂
    -- Rewrite the exponentials in terms of x^r and y^r
    have h₄ : Real.exp (r * Real.log x) = x ^ r := by
      rw [Real.rpow_def_of_pos hx']
      <;> ring_nf
      <;> field_simp [Real.exp_log]
    have h₅ : Real.exp (r * Real.log y) = y ^ r := by
      rw [Real.rpow_def_of_pos hy']
      <;> ring_nf
      <;> field_simp [Real.exp_log]
    -- Combine the results to get x^r < y^r
    rw [h₄] at h₃
    rw [h₅] at h₃
    exact h₃
  
  -- Use the main lemma to prove the strict monotonicity on the set
  refine' fun x hx y hy hxy => _
  have h₁ : x ∈ Set.Ioi (0 : ℝ) := hx
  have h₂ : y ∈ Set.Ioi (0 : ℝ) := hy
  have h₃ : x < y := hxy
  have h₄ : x ^ r < y ^ r := h_main x y h₁ h₂ h₃
  exact h₄