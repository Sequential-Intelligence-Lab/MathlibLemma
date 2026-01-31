import Mathlib

lemma Finset.coe_ssubset_univ_iff {α} [Fintype α] {s : Finset α} :
    (s : Set α) ⊂ (Set.univ : Set α) ↔ s ⊂ (Finset.univ : Finset α) := by
  sorry
