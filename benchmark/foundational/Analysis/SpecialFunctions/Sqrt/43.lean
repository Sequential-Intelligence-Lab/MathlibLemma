import Mathlib

open Real

lemma contDiffOn_sqrt_compl_zero :
    ContDiffOn ℝ ⊤ Real.sqrt {x : ℝ | x ≠ 0} := by
  sorry