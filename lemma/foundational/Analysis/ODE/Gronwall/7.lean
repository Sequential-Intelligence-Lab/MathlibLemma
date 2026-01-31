import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_le_of_nonneg_δ {δ K ε x : ℝ} (hδ : 0 ≤ δ) :
    gronwallBound δ K ε x ≤ gronwallBound (max δ 0) K ε x := by
  -- We consider two cases based on the value of δ.
  cases' le_total 0 δ with hδ' hδ' <;> simp_all [gronwallBound]
  -- Case 1: δ ≥ 0
  -- In this case, max δ 0 = δ, so the inequality holds as an equality.
  <;> simp_all [gronwallBound]
  -- Case 2: δ < 0
  -- In this case, max δ 0 = 0, and we need to show that the bound with δ is less than or equal to the bound with 0.
  <;> linarith
  -- Using the properties of the exponential function and the fact that δ < 0, we conclude the inequality holds.
  <;> linarith