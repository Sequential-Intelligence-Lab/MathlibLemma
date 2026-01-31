import Mathlib

lemma Finset.ssubset_iff_subset_card {α} [DecidableEq α] {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ s.card < t.card := by
  constructor
  · intro h
    refine ⟨h.1, ?_⟩
    exact Finset.card_lt_card h
  · intro h
    rcases h with ⟨hs, hcard⟩
    -- show s ≠ t from card inequality
    have hne : s ≠ t := by
      intro hst
      apply lt_irrefl (s.card)
      simpa [hst] using hcard
    -- convert subset + ≠ to strict subset
    exact Finset.ssubset_iff_subset_ne.mpr ⟨hs, hne⟩