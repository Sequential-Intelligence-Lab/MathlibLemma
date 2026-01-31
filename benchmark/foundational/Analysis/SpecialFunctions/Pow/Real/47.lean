import Mathlib

lemma Real.rpow_injective_of_pos {x : ℝ} (hx : 0 < x) (hx1 : x ≠ 1) :
    Function.Injective fun y : ℝ => x ^ y := by
  sorry
