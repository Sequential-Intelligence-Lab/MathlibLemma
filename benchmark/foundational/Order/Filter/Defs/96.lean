import Mathlib

lemma Filter.curry_eq_seq_map {α β}
    (f : Filter α) (g : Filter β) :
    Filter.curry f g =
      Filter.seq (Filter.map Prod.mk f) g := by
  sorry
