import Mathlib

lemma vecMulVec_eq_zero_iff_left [MulZeroOneClass α] [NoZeroDivisors α]
    (w : m → α) (v : n → α) :
    Matrix.vecMulVec w v = 0 ↔ (w = 0 ∨ v = 0) := by
  sorry
