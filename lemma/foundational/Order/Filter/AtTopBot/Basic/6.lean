import Mathlib

lemma Filter.tendsto_atBot_principal_iff_subset {α β} [Preorder α] [IsDirected α (· ≥ ·)]
    {f : α → β} {s : Set β} :
    Filter.Tendsto f Filter.atBot (Filter.principal s) ↔
      ∀ᶠ a in Filter.atBot, f a ∈ s := by
  simpa using
    (Filter.tendsto_principal (f := f) (l := Filter.atBot) (s := s))