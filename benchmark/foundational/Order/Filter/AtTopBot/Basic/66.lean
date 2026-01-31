import Mathlib

lemma Filter.atTop_le_of_subseq_nat {f : ℕ → ℕ}
    (hf : StrictMono f) :
    Filter.atTop ≤ Filter.comap f Filter.atTop := by
  sorry
