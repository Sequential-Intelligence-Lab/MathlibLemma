import Mathlib

lemma Filter.tendsto_atTop_principal_iff_subset {α β} [Preorder α] [IsDirected α (· ≤ ·)]
    {f : α → β} {s : Set β} :
    Filter.Tendsto f Filter.atTop (Filter.principal s) ↔
      ∀ᶠ a in Filter.atTop, f a ∈ s := by
  simpa using
    (Filter.tendsto_principal (l := (Filter.atTop : Filter α)) (f := f) (s := s))