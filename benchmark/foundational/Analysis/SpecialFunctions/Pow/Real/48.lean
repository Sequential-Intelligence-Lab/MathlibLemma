import Mathlib

lemma Real.rpow_injective_of_pos' {x : ℝ} (hx : 0 < x) (hx1 : x ≠ 1) :
    Set.InjOn (fun y : ℝ => x ^ y) Set.univ := by
  sorry
