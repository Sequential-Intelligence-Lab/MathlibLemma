import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_mem_Ioi (x : ℝ) (hx : 0 < x) (y : ℝ) :
    x ^ y ∈ Set.Ioi 0 := by
  have h_main : x ^ y > 0 := by
    -- Use the property that for x > 0, x^y = exp(log x * y)
    have h₁ : x ^ y = Real.exp (Real.log x * y) := by
      rw [Real.rpow_def_of_pos hx]
      <;> simp [Real.exp_log]
    rw [h₁]
    -- The exponential function is always positive
    exact Real.exp_pos _
  
  have h_final : x ^ y ∈ Set.Ioi 0 := by
    -- Since x^y > 0, it is in the interval (0, ∞)
    exact Set.mem_Ioi.mpr h_main
  
  exact h_final