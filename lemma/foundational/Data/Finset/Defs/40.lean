import Mathlib

lemma Finset.ssubset_ne {α} {s t : Finset α} (h : s ⊂ t) : s ≠ t := by
  intro hs
  -- From `hs : s = t`, we get `t ⊆ s` by rewriting the reflexive subset.
  have : t ⊆ s := by
    simpa [hs] using (Finset.subset_refl s)
  -- But this contradicts the strictness condition `¬ t ⊆ s`.
  exact h.2 this