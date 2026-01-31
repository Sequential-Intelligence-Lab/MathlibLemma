import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_ne_zero' {x : ℝ} (hx : 0 < x) :
    √x ≠ 0 := by
  have h_main : √x ≠ 0 := by
    intro h
    have h₁ : x = 0 := by
      have h₂ : √x = 0 := h
      have h₃ : (√x) ^ 2 = 0 := by
        rw [h₂]
        <;> norm_num
      have h₄ : (√x) ^ 2 = x := by
        rw [Real.sq_sqrt (le_of_lt hx)]
      rw [h₄] at h₃
      linarith
    linarith
  exact h_main