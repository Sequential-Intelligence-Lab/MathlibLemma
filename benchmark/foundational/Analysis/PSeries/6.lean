import Mathlib

lemma SuccDiffBounded_succ_le {C : ℕ} {u : ℕ → ℕ}
    (h : SuccDiffBounded C u) :
    ∀ n, u (n + 1) - u n ≤ C * (u (n + 1) - u n) := by
  sorry
