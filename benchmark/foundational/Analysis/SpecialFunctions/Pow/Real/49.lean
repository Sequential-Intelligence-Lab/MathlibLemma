import Mathlib

lemma Real.rpow_injOn_Ioi (x : ℝ) (hx0 : 0 < x) (hx1 : x ≠ 1) :
    Set.InjOn (fun y : ℝ => x ^ y) (Set.Ioi 0) := by
  sorry
