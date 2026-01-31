import Mathlib

lemma Filter.EventuallyLE_of_forall {α β} [LE β] {l : Filter α}
    {f g : α → β}
    (h : ∀ x, f x ≤ g x) :
    f ≤ᶠ[l] g := by
  sorry
