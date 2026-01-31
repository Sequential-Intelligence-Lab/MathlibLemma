import Mathlib

lemma Multiset.map_univ_val_surjective {α β} [Fintype α] [Fintype β]
    (f : α → β) (hf : Function.Surjective f) :
    (Finset.univ : Finset β).val ⊆
      Multiset.map f (Finset.univ : Finset α).val := by
  sorry
