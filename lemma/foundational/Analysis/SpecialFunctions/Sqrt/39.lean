import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_eq_iff_sq_eq_of_nonneg {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y) :
    Real.sqrt x = Real.sqrt y ↔ x = y := by
  constructor <;> intro h
  -- Prove the forward direction: if sqrt(x) = sqrt(y), then x = y.
  -- Use the property of square roots that if sqrt(x) = sqrt(y), then x = y.
  <;> simp_all [Real.sq_sqrt, Real.sqrt_sq_eq_abs]
  -- Prove the reverse direction: if x = y, then sqrt(x) = sqrt(y).
  -- Use the property of square roots that if x = y, then sqrt(x) = sqrt(y).
  <;> linarith
  -- Use linear arithmetic to conclude the proof.
  <;> linarith