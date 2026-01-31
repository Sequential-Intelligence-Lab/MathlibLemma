import Mathlib

lemma Finset.ssubset_iff_exists_insert_subset {α} [DecidableEq α] {s t : Finset α} :
    s ⊂ t ↔ ∃ a ∈ t, s ⊆ t.erase a := by
  classical
  constructor
  · intro h
    rcases h with ⟨hs, hnot⟩
    -- get an element of t not in s
    have : ∃ a ∈ t, a ∉ s := by
      by_contra h'
      -- h' : ¬ ∃ a ∈ t, a ∉ s
      -- so every element of t is in s, i.e. t ⊆ s
      have hts : t ⊆ s := by
        intro x hx
        by_contra hx_s
        apply h'
        refine ⟨x, hx, ?_⟩
        exact hx_s
      exact hnot hts
    rcases this with ⟨a, ha_t, ha_not_s⟩
    refine ⟨a, ha_t, ?_⟩
    intro x hx_s
    have hx_t : x ∈ t := hs hx_s
    have hx_ne_a : x ≠ a := by
      intro hx_eq
      subst hx_eq
      exact ha_not_s hx_s
    have hx_pair : x ≠ a ∧ x ∈ t := ⟨hx_ne_a, hx_t⟩
    simpa [Finset.mem_erase] using hx_pair
  · rintro ⟨a, ha_t, hsubset⟩
    -- show s ⊂ t
    refine ⟨?hs, ?hnot⟩
    · -- s ⊆ t
      intro x hx_s
      have hx_erase : x ∈ t.erase a := hsubset hx_s
      exact (Finset.mem_erase.mp hx_erase).2
    · -- ¬ t ⊆ s
      have ha_not_s : a ∉ s := by
        intro ha_s
        have ha_in_erase : a ∈ t.erase a := hsubset ha_s
        have : False := by
          simpa [Finset.mem_erase] using ha_in_erase
        exact this.elim
      intro hts
      have : a ∈ s := hts ha_t
      exact ha_not_s this