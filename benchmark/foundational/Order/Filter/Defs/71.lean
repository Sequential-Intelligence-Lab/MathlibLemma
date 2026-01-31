import Mathlib

lemma Filter.Tendsto.eventually_eq {α β} {l₁ : Filter α} {l₂ : Filter β}
    {f g : α → β} (h : Filter.Tendsto f l₁ l₂)
    (hg : g =ᶠ[l₁] f) :
    Filter.Tendsto g l₁ l₂ := by
  sorry
