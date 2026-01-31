import Mathlib

theorem Finset.min'_image_comp
    {α β γ}
    [Preorder α]
    [DecidableEq α] [DecidableEq β]
    [LinearOrder β] [LinearOrder γ]
    {f : α → β} {g : β → γ}
    (hf : Monotone f) (hg : Monotone g)
    (s : Finset α) (hs : s.Nonempty) :
    (s.image (g ∘ f)).min' (by
      -- `s.image (g ∘ f)` is nonempty because `s` is nonempty
      rcases hs with ⟨x, hx⟩
      refine ⟨g (f x), ?_⟩
      exact Finset.mem_image.mpr ⟨x, hx, rfl⟩) =
      g ((s.image f).min' (by
        -- `s.image f` is nonempty because `s` is nonempty
        rcases hs with ⟨x, hx⟩
        refine ⟨f x, ?_⟩
        exact Finset.mem_image.mpr ⟨x, hx, rfl⟩)) := by
  sorry