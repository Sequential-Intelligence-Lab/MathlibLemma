import Mathlib

lemma SuccDiffBounded.add_const {C : ℕ} {u : ℕ → ℕ} (h : SuccDiffBounded C u) (c : ℕ) :
    SuccDiffBounded C fun n => u n + c := by
  sorry
