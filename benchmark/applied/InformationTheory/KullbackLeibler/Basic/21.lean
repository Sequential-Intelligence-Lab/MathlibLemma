import Mathlib

/-- Strict positivity of `klFun` away from 1. -/
lemma InformationTheory.klFun_pos_of_ne_one {x : ℝ} (hx : 0 < x) (hne : x ≠ 1) :
    0 < InformationTheory.klFun x := by
  sorry
