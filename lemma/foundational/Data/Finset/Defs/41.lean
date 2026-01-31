import Mathlib

lemma Finset.ssubset_iff_ne_and_subset {α} {s t : Finset α} :
    s ⊂ t ↔ s ≠ t ∧ s ⊆ t := by
  constructor
  · intro h
    -- h : s ⊂ t, i.e. s ⊆ t ∧ ¬ t ⊆ s
    have hsub : s ⊆ t := h.1
    have hne : s ≠ t := by
      intro hs
      -- From s ⊆ t and s = t we get t ⊆ s, contradicting ¬ t ⊆ s
      have hts : t ⊆ s := by
        simpa [hs] using hsub
      exact h.2 hts
    exact ⟨hne, hsub⟩
  · rintro ⟨hne, hsub⟩
    -- Need to show s ⊂ t, i.e. s ⊆ t ∧ ¬ t ⊆ s
    refine ⟨hsub, ?_⟩
    intro hts
    -- From s ⊆ t and t ⊆ s we get s = t, contradicting hne
    apply hne
    apply Finset.ext
    intro x
    constructor
    · intro hx
      exact hsub hx
    · intro hx
      exact hts hx