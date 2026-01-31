import Mathlib

lemma Real.rpow_monotoneOn_Icc {r : ℝ} (hr : 0 ≤ r) :
    MonotoneOn (fun x : ℝ => x ^ r) (Set.Icc 0 1) := by
  sorry
