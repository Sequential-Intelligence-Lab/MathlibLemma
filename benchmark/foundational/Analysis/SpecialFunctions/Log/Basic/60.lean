import Mathlib

open Filter Set

lemma Real.tendsto_log_atBot_nhdsWithin_pos :
    Tendsto (fun x : ℝ => Real.log x)
      (nhdsWithin (0 : ℝ) (Ioi 0))
      atBot := by
  sorry