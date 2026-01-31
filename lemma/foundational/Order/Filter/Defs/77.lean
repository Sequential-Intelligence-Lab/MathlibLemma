import Mathlib

lemma Filter.NeBot_iff_frequently {α} (f : Filter α) :
    Filter.NeBot f ↔ ∀ s, s ∈ f → ∃ x ∈ s, True := by
  constructor
  · intro hf s hs
    -- From NeBot, every set in the filter is nonempty
    have hne : (s : Set α).Nonempty := hf.nonempty_of_mem hs
    rcases hne with ⟨x, hx⟩
    exact ⟨x, hx, trivial⟩
  · intro h
    -- Build NeBot from the assumption that every set in f is inhabited
    refine ⟨?_⟩
    intro hf
    -- Under hf : f = ⊥, the empty set belongs to f
    have hEmpty : (∅ : Set α) ∈ f := by simpa [hf]
    -- But then we get an element of the empty set, contradiction
    have : ∃ x ∈ (∅ : Set α), True := h _ hEmpty
    simpa using this