import Mathlib

lemma SuccDiffBounded.comp_succ {C : ℕ} {u : ℕ → ℕ} (h : SuccDiffBounded C u) :
    SuccDiffBounded C fun n => u (n + 1) := by
  sorry
