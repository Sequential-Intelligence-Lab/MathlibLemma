import Mathlib

lemma disjSum_image_sumComm {α β} (s : Finset α) (t : Finset β) :
    (s.disjSum t).map (Equiv.sumComm _ _).toEmbedding =
      t.disjSum s := by
  sorry
