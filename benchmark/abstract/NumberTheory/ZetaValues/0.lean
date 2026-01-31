import Mathlib

lemma bernoulliFun_add_int (k : ℕ) (x : ℝ) (m : ℤ) :
    bernoulliFun k (x + m) =
      (bernoulliFun k x + (ite (k = 1) (m : ℝ) 0)) := by
  sorry
