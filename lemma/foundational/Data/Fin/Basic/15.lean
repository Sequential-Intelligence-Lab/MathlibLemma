import Mathlib

lemma Fin.eq_zero_or_eq_last {n : ℕ} (i : Fin (n + 1)) (h₀ : i ≤ 0) (h₁ : Fin.last n ≤ i) :
    i = 0 ∨ i = Fin.last n := by
  -- From `Fin.last n ≤ i`, get a natural-number inequality
  have h₁_nat : n ≤ (i : ℕ) := by
    simpa [Fin.last] using h₁
  -- From the bound `i.isLt : (i : ℕ) < n + 1`, deduce `(i : ℕ) ≤ n`
  have hi_le : (i : ℕ) ≤ n := Nat.le_of_lt_succ i.isLt
  -- Thus the value of `i` is exactly `n`
  have hi_val : (i : ℕ) = n := Nat.le_antisymm hi_le h₁_nat
  -- So `i` is equal to `Fin.last n`
  have hi_last : i = Fin.last n := by
    apply Fin.ext
    simpa [Fin.last, hi_val]
  exact Or.inr hi_last