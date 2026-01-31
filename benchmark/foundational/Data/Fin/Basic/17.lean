import Mathlib

lemma Fin.pred_val {n : ℕ} {i : Fin (n + 1)} (h : i ≠ 0) : i.pred h = ⟨i.val - 1, by sorry⟩ := by
  sorry
