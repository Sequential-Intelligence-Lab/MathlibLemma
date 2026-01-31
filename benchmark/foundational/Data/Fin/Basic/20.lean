import Mathlib

lemma Fin.pred_mono {n : ℕ} {i j : Fin (n + 1)} (hi : i ≠ 0) (hj : j ≠ 0) (hij : i ≤ j) :
    i.pred hi ≤ j.pred hj := by
  sorry
