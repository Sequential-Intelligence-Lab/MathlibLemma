import Mathlib

lemma Finset.subset_of_image_subset {α β} [DecidableEq α] [DecidableEq β]
    {f : α → β} (hf : Function.Injective f)
    {s t : Finset α} (h : s.image f ⊆ t.image f) : s ⊆ t := by
  intro x hx
  have hx_im : f x ∈ s.image f := by
    -- membership of f x in s.image f
    refine Finset.mem_image.mpr ?_
    exact ⟨x, hx, rfl⟩
  have hxt_im : f x ∈ t.image f := h hx_im
  -- use characterization of membership in image
  rcases Finset.mem_image.mp hxt_im with ⟨y, hy, hfy⟩
  -- injectivity gives y = x
  have : y = x := hf (by simpa [hfy] using rfl)
  -- rewrite membership of y in t to get membership of x in t
  simpa [this] using hy