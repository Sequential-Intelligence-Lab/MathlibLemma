import Mathlib

theorem Finset.min'_ge_of_forall {s : Finset ℕ} (hs : s.Nonempty) {k : ℕ}
    (h : ∀ n ∈ s, k ≤ n) :
    k ≤ s.min' hs := by
  sorry
