import Mathlib

lemma SuccDiffBounded.succDiff_nonneg {C : ℕ} {u : ℕ → ℕ}
    (h : SuccDiffBounded C u) (hu : Monotone u) :
    ∀ n, u (n + 1) - u n ≠ 0 → 0 < u (n + 1) - u n := by
  sorry
