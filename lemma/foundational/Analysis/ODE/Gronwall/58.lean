import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_add_bound
    {δ K ε x : ℝ} :
    gronwallBound δ K ε x ≤ gronwallBound δ K 0 x + gronwallBound 0 K ε x := by
  -- Simplify the expressions using the definitions and properties of the Gronwall bound.
  simp only [gronwallBound]
  -- Use linear arithmetic to establish the inequality.
  -- We need to handle the cases where K is zero or not zero separately.
  split_ifs with h h <;> simp_all [h]
  <;> linarith [mul_nonneg (exp_nonneg x) (sub_nonneg.mpr (le_refl x))]