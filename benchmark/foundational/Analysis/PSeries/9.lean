import Mathlib

lemma StrictMono.succDiff_ne_zero {u : ℕ → ℕ} (hu : StrictMono u) :
    ∀ n, u (n + 1) - u n ≠ 0 := by
  sorry
