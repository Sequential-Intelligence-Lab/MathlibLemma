import Mathlib

lemma Multiset.map_univ_val_bijective {α β} [Fintype α] [Fintype β]
    (f : α → β) :
    Function.Bijective f ↔
      Multiset.map f (Finset.univ : Finset α).val =
        (Finset.univ : Finset β).val := by
  sorry
