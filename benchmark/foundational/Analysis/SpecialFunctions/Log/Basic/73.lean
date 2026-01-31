import Mathlib

lemma Real.continuousAt_log_abs {x : ℝ} (hx : x ≠ 0) :
    ContinuousAt (fun t => Real.log |t|) x := by
  sorry
