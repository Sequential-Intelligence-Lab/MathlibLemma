import Mathlib

lemma Filter.Frequently_iff {α} {f : Filter α} {p : α → Prop} :
    (∃ᶠ x in f, p x) ↔ ¬ ∀ᶠ x in f, ¬ p x := by
  simpa using (Filter.Frequently_iff_not_eventually (f := f) (p := p))