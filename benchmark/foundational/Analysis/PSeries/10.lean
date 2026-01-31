import Mathlib

lemma SuccDiffBounded_of_ge_one {C : ℕ} {u : ℕ → ℕ}
    (h : ∀ n, 1 ≤ u (n + 2) - u (n + 1))
    (hC : ∀ n, u (n + 2) - u (n + 1) ≤ C * (u (n + 1) - u n)) :
    SuccDiffBounded C u := by
  sorry
