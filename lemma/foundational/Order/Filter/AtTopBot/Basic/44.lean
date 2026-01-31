import Mathlib

lemma Filter.tendsto_atTop_of_sandwich {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [Preorder β] [IsDirected β (· ≤ ·)]
    {f g h : α → β}
    (hg : Filter.Tendsto g Filter.atTop Filter.atTop)
    (hh : Filter.Tendsto h Filter.atTop Filter.atTop)
    (h_between : ∀ᶠ a in Filter.atTop, g a ≤ f a ∧ f a ≤ h a) :
    Filter.Tendsto f Filter.atTop Filter.atTop := by
  -- Use the characterization of tendsto to atTop by eventual lower bounds.
  apply Filter.tendsto_atTop.2
  intro b
  -- From `hg` we know that `g` is eventually ≥ any given `b`.
  have hg_b : ∀ᶠ a in Filter.atTop, b ≤ g a :=
    hg.eventually_ge_atTop b
  -- Combine with the sandwich inequality `g a ≤ f a` to get `b ≤ f a`.
  refine (hg_b.and h_between).mono ?_
  intro a ha
  rcases ha with ⟨hbg, hgf⟩
  -- `hgf.1 : g a ≤ f a`
  exact le_trans hbg hgf.1