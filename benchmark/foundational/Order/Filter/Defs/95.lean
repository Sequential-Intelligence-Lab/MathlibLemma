import Mathlib

lemma Filter.IsCoboundedUnder.comp {α β γ} {r : γ → γ → Prop}
    (f : Filter α) (g : α → β) (h : β → γ)
    (hb : Filter.IsCoboundedUnder r f (fun x => h (g x))) :
    Filter.IsCoboundedUnder (fun x y => r (h x) (h y)) f g := by
  sorry
