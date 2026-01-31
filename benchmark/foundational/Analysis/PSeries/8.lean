import Mathlib

lemma StrictMono.succDiff_pos {u : ℕ → ℕ} (hu : StrictMono u) :
    ∀ n, 0 < u (n + 1) - u n := by
  sorry
