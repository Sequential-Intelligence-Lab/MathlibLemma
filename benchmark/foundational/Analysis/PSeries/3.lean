import Mathlib

lemma SuccDiffBounded_of_le {C D : ℕ} {u : ℕ → ℕ}
    (hC : SuccDiffBounded C u) (hCD : C ≤ D) :
    SuccDiffBounded D u := by
  sorry
