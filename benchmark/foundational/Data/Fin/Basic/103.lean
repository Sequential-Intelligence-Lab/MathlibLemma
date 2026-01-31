import Mathlib

lemma Fin.cast_mono {m n : ℕ} (h : m ≤ n) :
    (Fin.castLE h : Fin m → Fin n) = fun i => ⟨i.val, Nat.lt_of_lt_of_le i.isLt h⟩ := by
  sorry
