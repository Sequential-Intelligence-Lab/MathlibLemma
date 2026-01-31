import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_mul_self_nonneg (hx : 0 ≤ x) :
    √x * √x = x := by
  have h_main : √x * √x = x := by
    have h₁ : √x ≥ 0 := Real.sqrt_nonneg x
    have h₂ : (√x) ^ 2 = x := by
      rw [Real.sq_sqrt] <;> linarith
    calc
      √x * √x = (√x) ^ 2 := by ring
      _ = x := by rw [h₂]
  exact h_main