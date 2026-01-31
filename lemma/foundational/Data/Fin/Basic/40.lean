import Mathlib

lemma Fin.eq_last_or_lt_last {n : ℕ} (i : Fin (n + 1)) :
    i = Fin.last n ∨ i < Fin.last n := by
  -- Get a ≤-bound on the underlying natural number
  have hle : (i : ℕ) ≤ n := Nat.lt_succ_iff.mp i.isLt
  -- Split into equality or strict inequality on ℕ
  have hcases : (i : ℕ) = n ∨ (i : ℕ) < n := Nat.eq_or_lt_of_le hle
  cases hcases with
  | inl h_eq =>
      -- Case 1: i.val = n ⇒ i = Fin.last n
      left
      apply Fin.ext
      -- Now the goal is `(i : ℕ) = n`, which is h_eq
      simpa [Fin.last, h_eq]
  | inr h_lt =>
      -- Case 2: i.val < n ⇒ i < Fin.last n
      right
      have : (i : ℕ) < n := h_lt
      -- The goal `i < Fin.last n` is definitionally `(i : ℕ) < n`
      simpa [Fin.last] using this