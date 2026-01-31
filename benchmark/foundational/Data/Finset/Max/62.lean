import Mathlib

theorem Finset.max'_succ_le_of_forall {s : Finset ℕ} (hs : s.Nonempty) {k : ℕ}
    (h : ∀ n ∈ s, n ≤ k) :
    s.max' hs ≤ k := by
  sorry
