import Mathlib

lemma Finset.ssubset_iff_exists_subset {α} {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ ∃ u, s ⊆ u ∧ u ⊆ t ∧ s ≠ u := by
  constructor
  · intro h
    rcases h with ⟨hst, hnot⟩
    refine And.intro hst ?_
    -- choose u = t
    refine ⟨t, hst, ?_, ?_⟩
    · -- t ⊆ t
      intro x hx; exact hx
    · -- show s ≠ t from ¬ t ⊆ s
      intro hEq
      apply hnot
      -- from s = t and s ⊆ t we get t ⊆ s
      have : t ⊆ s := by
        simpa [hEq.symm] using hst
      exact this
  · rintro ⟨hst, ⟨u, hsu, hut, hne⟩⟩
    refine ⟨hst, ?_⟩
    -- show ¬ t ⊆ s
    intro hts
    -- from hsu : s ⊆ u and hut : u ⊆ t and hts : t ⊆ s, get u ⊆ s
    have hus : u ⊆ s := fun x hx => hts (hut hx)
    -- hence s = u, contradicting hne
    have hEq : s = u := by
      apply Finset.ext
      intro x
      constructor
      · intro hx
        -- s ⊆ u
        exact hsu hx
      · intro hx
        -- u ⊆ s
        exact hus hx
    exact hne hEq