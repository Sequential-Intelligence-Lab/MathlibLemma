import Mathlib

lemma Real.rpow_strictAntiOn_Ioi {r : ℝ} (hr : r < 0) :
    StrictAntiOn (fun x : ℝ => x ^ r) (Set.Ioi 0) := by
  sorry
