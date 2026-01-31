import Mathlib

lemma disjSum_image_sumCongr {α α' β β'}
    (e₁ : α ≃ α') (e₂ : β ≃ β')
    (s : Finset α) (t : Finset β) :
    (s.disjSum t).map (Equiv.toEmbedding (Equiv.sumCongr e₁ e₂)) =
      (s.map e₁.toEmbedding).disjSum (t.map e₂.toEmbedding) := by
  sorry