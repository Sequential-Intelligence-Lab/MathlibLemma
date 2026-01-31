import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_strictAntiOn_Ioi {r : ℝ} (hr : r < 0) :
    StrictAntiOn (fun x : ℝ => x ^ r) (Set.Ioi 0) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Ioi (0 : ℝ) → y ∈ Set.Ioi (0 : ℝ) → x < y → x ^ r > y ^ r := by
    intro x y hx hy hxy
    have hx' : 0 < x := by exact Set.mem_Ioi.mp hx
    have hy' : 0 < y := by exact Set.mem_Ioi.mp hy
    have h₁ : Real.log x < Real.log y := Real.log_lt_log hx' hxy
    have h₂ : r * (Real.log x - Real.log y) > 0 := by
      -- Since r < 0 and log x - log y < 0, their product is positive.
      have h₃ : Real.log x - Real.log y < 0 := by linarith
      have h₄ : r < 0 := hr
      nlinarith
    have h₃ : r * Real.log x > r * Real.log y := by
      -- Expand the product to get r * log x - r * log y > 0.
      have h₄ : r * (Real.log x - Real.log y) = r * Real.log x - r * Real.log y := by ring
      rw [h₄] at h₂
      linarith
    have h₄ : Real.exp (r * Real.log x) > Real.exp (r * Real.log y) := by
      -- The exponential function is strictly increasing.
      apply Real.exp_lt_exp.mpr
      exact h₃
    have h₅ : x ^ r = Real.exp (r * Real.log x) := by
      -- Definition of real power for positive x.
      rw [Real.rpow_def_of_pos hx']
      <;> ring_nf
    have h₆ : y ^ r = Real.exp (r * Real.log y) := by
      -- Definition of real power for positive y.
      rw [Real.rpow_def_of_pos hy']
      <;> ring_nf
    -- Combining all the above results to get the final inequality.
    rw [h₅, h₆] at *
    exact h₄
  
  -- Use the main lemma to conclude the proof.
  refine' fun x hx y hy hxy => _
  have h₁ : x ^ r > y ^ r := h_main x y hx hy hxy
  exact h₁