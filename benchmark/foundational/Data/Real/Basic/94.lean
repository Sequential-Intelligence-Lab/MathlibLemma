import Mathlib

lemma RingHom.IsBoundedWrt_of_le {α : Type*} [Ring α]
    {nα nα' : α → ℝ} {β : Type*} [Ring β] {nβ : β → ℝ}
    (h : ∀ x, nα x ≤ nα' x)
    {f : α →+* β} (hf : RingHom.IsBoundedWrt nα nβ f) :
    RingHom.IsBoundedWrt nα' nβ f := by
  sorry
