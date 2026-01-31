import Mathlib

lemma RingHom.IsBoundedWrt.comp {α β γ : Type*} [Ring α] [Ring β] [Ring γ]
    {nα : α → ℝ} {nβ : β → ℝ} {nγ : γ → ℝ}
    {f : α →+* β} {g : β →+* γ}
    (hf : RingHom.IsBoundedWrt nα nβ f)
    (hg : RingHom.IsBoundedWrt nβ nγ g) :
    RingHom.IsBoundedWrt nα nγ (g.comp f) := by
  sorry
