import Mathlib

lemma Filter.mem_atTop_sets_iff_nat {s : Set ℕ} :
    s ∈ (Filter.atTop : Filter ℕ) ↔ ∃ N, ∀ n ≥ N, n ∈ s := by
  sorry
