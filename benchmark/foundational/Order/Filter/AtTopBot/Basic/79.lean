import Mathlib

lemma Filter.atTop_isBoundedUnder_lt_iff_nat {f : ℕ → ℕ} :
    (Filter.atTop.IsBoundedUnder (· < ·) f) ↔ ∃ M, ∀ n, f n < M := by
  sorry
