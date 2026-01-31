import Mathlib

lemma disjSum_image_eq_disjUnion {α β γ} [DecidableEq γ]
    (s : Finset α) (t : Finset β) (f : α ⊕ β → γ)
    (hf : Function.Injective f) :
    (s.disjSum t).image f =
      (s.image (f ∘ Sum.inl)).disjUnion (t.image (f ∘ Sum.inr))
        (by
          sorry) := by
  sorry