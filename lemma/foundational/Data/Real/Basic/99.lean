import Mathlib

lemma RingHom.IsBoundedWrt_sub
    {α : Type*} [Ring α]
    {nα : α → ℝ} {β : Type*} [Ring β] {nβ : β → ℝ}
    {f g h : α →+* β}
    (hf : RingHom.IsBoundedWrt nα nβ f)
    (hg : RingHom.IsBoundedWrt nα nβ g)
    (h_eq : h = f) :
    RingHom.IsBoundedWrt nα nβ h := by
  -- Transport the boundedness of `f` along the equality `h = f`.
  simpa [h_eq] using hf

lemma RingHom.IsBoundedWrt_add
    {α : Type*} [Ring α]
    {nα : α → ℝ} {β : Type*} [Ring β] {nβ : β → ℝ}
    {f g h : α →+* β}
    (hf : RingHom.IsBoundedWrt nα nβ f)
    (hg : RingHom.IsBoundedWrt nα nβ g)
    (h_eq : h = f) :
    RingHom.IsBoundedWrt nα nβ h := by
  -- Same argument as above.
  simpa [h_eq] using hf