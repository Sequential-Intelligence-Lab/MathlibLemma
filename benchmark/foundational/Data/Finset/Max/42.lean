import Mathlib

theorem Finset.max'_image_comp
    {α β γ} [Preorder α] [LinearOrder β] [LinearOrder γ]
    [DecidableEq α] [DecidableEq β] [DecidableEq γ]
    {f : α → β} {g : β → γ} (hf : Monotone f) (hg : Monotone g)
    (s : Finset α) (hs : s.Nonempty) :
    (s.image (g ∘ f)).max' (by
      -- Nonempty proof for s.image (g ∘ f)
      sorry
    ) =
      g ((s.image f).max' (by
        -- Nonempty proof for s.image f
        sorry
      )) := by
  -- main proof (not required)
  sorry