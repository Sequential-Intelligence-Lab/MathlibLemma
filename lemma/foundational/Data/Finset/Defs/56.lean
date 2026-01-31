import Mathlib

lemma Finset.subset_of_injective_image {α β} [DecidableEq α] [DecidableEq β]
    {f : α → β} (hf : Function.Injective f)
    {s t : Finset α} (h : s.image f ⊆ t.image f) : s ⊆ t := by
  intro x hx
  have hfx : f x ∈ s.image f := by
    -- from x ∈ s we get f x ∈ s.image f
    exact Finset.mem_image.mpr ⟨x, hx, rfl⟩
  have hfx' : f x ∈ t.image f := h hfx
  rcases Finset.mem_image.mp hfx' with ⟨y, hy, hyfx⟩
  -- use injectivity of f to identify y with x
  have : y = x := hf (by simpa [hyfx])
  simpa [this] using hy