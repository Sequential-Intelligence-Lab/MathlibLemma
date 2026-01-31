import Mathlib

lemma Real.rpow_strictMonoOn_Ioi {r : ℝ} (hr : 0 < r) :
    StrictMonoOn (fun x : ℝ => x ^ r) (Set.Ioi 0) := by
  sorry
