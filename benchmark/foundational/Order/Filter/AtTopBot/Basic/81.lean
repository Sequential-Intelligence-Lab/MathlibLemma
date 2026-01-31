import Mathlib

lemma Filter.tendsto_atTop_of_monotone_nat {f : ℕ → ℕ}
    (hf : Monotone f)
    (h_unbounded : ∀ M, ∃ n, M ≤ f n) :
    Filter.Tendsto f Filter.atTop Filter.atTop := by
  sorry
