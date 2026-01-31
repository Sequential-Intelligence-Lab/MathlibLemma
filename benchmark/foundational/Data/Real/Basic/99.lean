import Mathlib

lemma RingHom.IsBoundedWrt_sub
    {α : Type*} [Ring α]
    {nα : α → ℝ} {β : Type*} [Ring β] {nβ : β → ℝ}
    {f g h : α →+* β}
    (hf : RingHom.IsBoundedWrt nα nβ f)
    (hg : RingHom.IsBoundedWrt nα nβ g) :
    RingHom.IsBoundedWrt nα nβ h := by
  sorry

lemma RingHom.IsBoundedWrt_add
    {α : Type*} [Ring α]
    {nα : α → ℝ} {β : Type*} [Ring β] {nβ : β → ℝ}
    {f g h : α →+* β}
    (hf : RingHom.IsBoundedWrt nα nβ f)
    (hg : RingHom.IsBoundedWrt nα nβ g) :
    RingHom.IsBoundedWrt nα nβ h := by
  sorry