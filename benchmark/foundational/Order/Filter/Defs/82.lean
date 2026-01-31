import Mathlib

open Filter

lemma Filter.bind_principal {α β} (f : Filter α) (g : α → Set β) :
    Filter.bind f (fun a => Filter.principal (g a)) =
      Filter.lift f (fun s => Filter.principal (⋃ a ∈ s, g a)) := by
  sorry