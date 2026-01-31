import Mathlib

lemma toLeft_eq_empty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toLeft = (∅ : Finset α) ↔ ∀ a, Sum.inl a ∉ u := by
  constructor
  · intro h a
    have : a ∉ u.toLeft := by
      simpa [h]
    -- use the membership characterization of toLeft
    simpa [Finset.mem_toLeft] using this
  · intro h
    ext a
    -- membership in u.toLeft is equivalent to membership of Sum.inl a in u
    -- and by hypothesis that is always false
    simpa [Finset.mem_toLeft, h a]