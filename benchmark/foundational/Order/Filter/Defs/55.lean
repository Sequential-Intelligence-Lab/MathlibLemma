import Mathlib

lemma Filter.Eventually.imp {α} {p q : α → Prop} {f : Filter α}
    (hpq : ∀ᶠ x in f, p x → q x) (hp : ∀ᶠ x in f, p x) :
    ∀ᶠ x in f, q x := by
  sorry
