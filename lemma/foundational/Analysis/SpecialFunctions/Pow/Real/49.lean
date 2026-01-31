import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_injOn_Ioi (x : ℝ) (hx0 : 0 < x) (hx1 : x ≠ 1) :
    Set.InjOn (fun y : ℝ => x ^ y) (Set.Ioi 0) := by
  -- Assume \( x > 0 \) and \( x \neq 1 \)
  have hx : 0 < x := hx0
  have hx' : x ≠ 1 := hx1
  -- Use the fact that the function is strictly monotonic to prove injectivity
  apply Set.injOn_of_injective
  intro y1 y2 h
  -- Use the property of exponential functions being strictly increasing or decreasing
  apply_fun fun y => logb x y at h
  -- Simplify the equation using the properties of logarithms
  simp_all [logb_rpow]
  -- Use linear arithmetic to conclude the proof
  <;> linarith