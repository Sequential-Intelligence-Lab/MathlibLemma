import Mathlib

lemma Filter.Eventually.const {α} {p : Prop} (f : Filter α) (hp : p) :
    ∀ᶠ _x in f, p := by
  sorry
