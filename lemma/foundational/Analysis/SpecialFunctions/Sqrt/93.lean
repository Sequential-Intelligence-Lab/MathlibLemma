import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_map_inf {α} {f g : α → ℝ} :
    (fun x => √(min (f x) (g x))) = fun x => min (√(f x)) (√(g x)) := by
  -- We will prove that the two functions are equal by showing that they produce the same output for any input x.
  funext x
  -- We consider two cases based on the relationship between f(x) and g(x).
  cases' le_total (f x) (g x) with h h <;> simp_all [min_eq_left, min_eq_right, Real.sqrt_le_sqrt]
  -- In each case, we use the properties of the minimum function and the square root function to show that the outputs are equal.
  <;> linarith