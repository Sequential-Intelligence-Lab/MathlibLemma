import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_mem_Icc_of_mem_Icc {x : ℝ} (hx : x ∈ Set.Icc 0 1) (y : ℝ) (hy : 0 ≤ y) :
    x ^ y ∈ Set.Icc 0 1 := by
  have hx1 : 0 ≤ x := by
    exact hx.1
  
  have hx2 : x ≤ 1 := by
    exact hx.2
  
  have h_nonneg : 0 ≤ x ^ y := by
    -- Use the property that if x is non-negative, then x^y is non-negative for any real y.
    exact Real.rpow_nonneg hx1 y
  
  have h_le_one : x ^ y ≤ 1 := by
    -- Use the property that if 0 ≤ x ≤ 1 and y ≥ 0, then x^y ≤ 1.
    exact Real.rpow_le_one hx1 hx2 hy
  
  have h_main : x ^ y ∈ Set.Icc 0 1 := by
    -- Combine the two inequalities to show that x^y is in the interval [0, 1].
    exact ⟨h_nonneg, h_le_one⟩
  
  exact h_main
  <;> norm_num