import Mathlib

lemma Filter.Frequently.imp {α} {f : Filter α} {p q : α → Prop}
    (hp : ∃ᶠ x in f, p x) (hpq : ∀ᶠ x in f, p x → q x) :
    ∃ᶠ x in f, q x := by
  sorry
