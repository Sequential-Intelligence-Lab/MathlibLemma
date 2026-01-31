import Mathlib

lemma disjSum_ssubset_iff_left {α β} {s₁ s₂ : Finset α} {t : Finset β} :
    s₁.disjSum t ⊂ s₂.disjSum t ↔ s₁ ⊂ s₂ := by
  classical
  constructor
  · -- forward direction
    intro h
    rcases (Finset.ssubset_iff_subset_ne).1 h with ⟨hsub, hneq⟩
    refine (Finset.ssubset_iff_subset_ne).2 ?_
    refine ⟨?_, ?_⟩
    · -- show s₁ ⊆ s₂
      intro a ha
      have : Sum.inl a ∈ s₁.disjSum t := by simpa using ha
      have : Sum.inl a ∈ s₂.disjSum t := hsub this
      simpa using this
    · -- show s₁ ≠ s₂
      intro h_eq
      apply hneq
      simpa [h_eq]
  · -- backward direction
    intro h
    rcases (Finset.ssubset_iff_subset_ne).1 h with ⟨hsub, hne⟩
    refine (Finset.ssubset_iff_subset_ne).2 ?_
    refine ⟨?_, ?_⟩
    · -- show s₁.disjSum t ⊆ s₂.disjSum t
      intro x hx
      cases x with
      | inl a =>
          -- element from the left component
          have : a ∈ s₁ := by simpa using hx
          have : a ∈ s₂ := hsub this
          simpa using this
      | inr b =>
          -- element from the right component (t is unchanged)
          have : b ∈ t := by simpa using hx
          have : Sum.inr b ∈ s₂.disjSum t := by simpa using this
          exact this
    · -- show s₁.disjSum t ≠ s₂.disjSum t
      intro h_eq_disj
      apply hne
      -- deduce s₁ = s₂ from equality of disjSum
      ext a
      constructor
      · intro ha
        have : Sum.inl a ∈ s₁.disjSum t := by simpa using ha
        have : Sum.inl a ∈ s₂.disjSum t := by simpa [h_eq_disj] using this
        simpa using this
      · intro ha
        have : Sum.inl a ∈ s₂.disjSum t := by simpa using ha
        have : Sum.inl a ∈ s₁.disjSum t := by simpa [h_eq_disj] using this
        simpa using this