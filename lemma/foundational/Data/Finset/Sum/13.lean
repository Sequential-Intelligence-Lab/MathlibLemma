import Mathlib

lemma disjSum_ssubset_iff_right
    {α β} [DecidableEq α] [DecidableEq β]
    {s : Finset α} {t₁ t₂ : Finset β} :
    s.disjSum t₁ ⊂ s.disjSum t₂ ↔ t₁ ⊂ t₂ := by
  -- First, relate subset of disjoint sums to subset of right components.
  have subset_iff :
      s.disjSum t₁ ⊆ s.disjSum t₂ ↔ t₁ ⊆ t₂ := by
    constructor
    · intro h b hb
      -- From b ∈ t₁ we get Sum.inr b ∈ s.disjSum t₁, push through h,
      -- then simplify back to b ∈ t₂.
      have : Sum.inr b ∈ s.disjSum t₁ := by
        simpa [Finset.disjSum] using hb
      have : Sum.inr b ∈ s.disjSum t₂ := h this
      simpa [Finset.disjSum] using this
    · intro h x hx
      -- Case analysis on x : Sum α β
      cases x with
      | inl a =>
          -- Left part depends only on s, so membership is preserved.
          simpa [Finset.disjSum] using hx
      | inr b =>
          -- Right part: use h : t₁ ⊆ t₂.
          have hb : b ∈ t₁ := by
            simpa [Finset.disjSum] using hx
          have hb' : b ∈ t₂ := h hb
          simpa [Finset.disjSum] using hb'
  -- Next, relate equality of disjoint sums to equality of right components.
  have eq_iff :
      s.disjSum t₁ = s.disjSum t₂ ↔ t₁ = t₂ := by
    constructor
    · intro h
      apply Finset.ext
      intro b
      -- Compare membership of Sum.inr b in each side.
      have := congrArg (fun (u : Finset (Sum α β)) => (Sum.inr b) ∈ u) h
      simpa [Finset.disjSum] using this
    · intro h
      simpa [h]
  -- Now translate strict subset using the two equivalences above.
  constructor
  · intro h
    rcases Finset.ssubset_iff_subset_ne.mp h with ⟨hsub, hne⟩
    have hsub' : t₁ ⊆ t₂ := (subset_iff).1 hsub
    have hne' : t₁ ≠ t₂ := fun ht => hne ((eq_iff).2 ht)
    exact Finset.ssubset_iff_subset_ne.mpr ⟨hsub', hne'⟩
  · intro h
    rcases Finset.ssubset_iff_subset_ne.mp h with ⟨hsub, hne⟩
    have hsub' : s.disjSum t₁ ⊆ s.disjSum t₂ := (subset_iff).2 hsub
    have hne' : s.disjSum t₁ ≠ s.disjSum t₂ := fun ht => hne ((eq_iff).1 ht)
    exact Finset.ssubset_iff_subset_ne.mpr ⟨hsub', hne'⟩