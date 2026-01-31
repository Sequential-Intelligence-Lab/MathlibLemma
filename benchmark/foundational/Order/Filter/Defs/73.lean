import Mathlib

lemma Filter.Tendsto.map_left {α β γ}
    {l₁ : Filter α} {l₂ : Filter β} {f : α → β} {g : β → γ}
    (h : Filter.Tendsto f l₁ l₂) :
    Filter.Tendsto (fun x => g (f x)) l₁ (Filter.map g l₂) := by
  sorry
