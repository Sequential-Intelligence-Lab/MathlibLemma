import Mathlib

lemma Filter.EventuallyLE.mono {α β} [LE β] {l : Filter α}
    {f g k : α → β}
    (hfg : f ≤ᶠ[l] g) (h : ∀ x, g x ≤ k x) :
    f ≤ᶠ[l] k := by
  sorry