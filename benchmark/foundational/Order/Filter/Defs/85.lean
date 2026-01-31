import Mathlib

lemma Filter.sprod_mono {α β}
    {f₁ f₂ : Filter α} {g₁ g₂ : Filter β}
    (hf : f₁ ≤ f₂) (hg : g₁ ≤ g₂) :
    (f₁ ×ˢ g₁) ≤ (f₂ ×ˢ g₂) := by
  sorry
