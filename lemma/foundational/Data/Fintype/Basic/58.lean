import Mathlib

lemma Multiset.map_univ_val_surjective {α β} [Fintype α] [Fintype β]
    (f : α → β) (hf : Function.Surjective f) :
    (Finset.univ : Finset β).val ⊆
      Multiset.map f (Finset.univ : Finset α).val := by
  -- unfold subset: membership implication on multisets
  intro b hb
  -- use surjectivity to get a preimage a with f a = b
  obtain ⟨a, rfl⟩ := hf b
  -- we now need to show f a is in the mapped multiset
  -- use the characterization of membership in `map`
  apply Multiset.mem_map.2
  -- provide witness a and its membership in the source multiset
  refine ⟨a, ?_, rfl⟩
  -- a is in the multiset of all elements of α
  -- `Finset.mem_univ a` : a ∈ (Finset.univ : Finset α)
  -- turn that into membership in the underlying multiset `val`
  simpa using (Finset.mem_univ a)