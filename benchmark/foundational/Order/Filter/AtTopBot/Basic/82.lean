import Mathlib

lemma Filter.tendsto_atBot_of_antitone_nat {f : ℕ → ℤ}
    (hf : Antitone f)
    (h_unbounded : ∀ M : ℤ, ∃ n, f n ≤ M) :
    Filter.Tendsto f Filter.atTop Filter.atBot := by
  sorry
