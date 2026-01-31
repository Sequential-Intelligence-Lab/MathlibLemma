import Mathlib

lemma Real.rpow_mem_Icc {x : ℝ} (hx : 0 ≤ x) (y : ℝ) :
    x ^ y ∈ Set.Icc 0 (max 1 (x ^ y)) := by
  sorry
