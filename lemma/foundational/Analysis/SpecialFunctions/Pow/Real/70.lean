import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_mem_Icc {x : ℝ} (hx : 0 ≤ x) (y : ℝ) :
    x ^ y ∈ Set.Icc 0 (max 1 (x ^ y)) := by
  have h₁ : 0 ≤ (x : ℝ) ^ y := by
    -- Use the property that non-negative numbers raised to any real power are non-negative.
    exact Real.rpow_nonneg hx y
  
  have h₂ : (x : ℝ) ^ y ≤ max 1 ((x : ℝ) ^ y) := by
    -- The maximum of 1 and x^y is always at least x^y.
    have h₃ : (x : ℝ) ^ y ≤ max 1 ((x : ℝ) ^ y) := by
      apply le_max_right
    exact h₃
  
  have h_main : x ^ y ∈ Set.Icc 0 (max 1 (x ^ y)) := by
    -- Combine the lower and upper bounds to show x^y is in the interval [0, max(1, x^y)].
    constructor <;>
    (try norm_num) <;>
    (try linarith) <;>
    (try assumption) <;>
    (try simp_all [Set.Icc, le_refl, le_of_lt]) <;>
    (try norm_num) <;>
    (try linarith)
    <;>
    (try
      {
        cases' le_total 1 (x ^ y) with h h <;>
        simp_all [max_eq_right, max_eq_left] <;>
        linarith
      })
  
  exact h_main