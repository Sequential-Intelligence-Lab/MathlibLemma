import Mathlib

lemma Filter.Tendsto.pure {α β} {l : Filter α} {f : α → β} {b : β}
    (h : ∀ᶠ x in l, f x = b) :
    Filter.Tendsto f l (pure b) := by
  sorry
