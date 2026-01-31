import Mathlib

lemma Fin.exists_eq_val {n : ℕ} (i : Fin n) : ∃ k : { k : ℕ // k < n }, i = ⟨k, k.property⟩ := by
  sorry