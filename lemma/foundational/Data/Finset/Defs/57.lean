import Mathlib

lemma Finset.ssubset_of_injective_image {α β} [DecidableEq α] [DecidableEq β]
    {f : α → β} (hf : Function.Injective f)
    {s t : Finset α} (h : s.image f ⊂ t.image f) : s ⊂ t := by
  -- Unpack the strict subset on images
  rcases h with ⟨hsub_img, hnot_img⟩
  -- First, show s ⊆ t
  have hsub : s ⊆ t := by
    intro x hx
    -- f x belongs to s.image f
    have hx_img : f x ∈ s.image f :=
      Finset.mem_image.mpr ⟨x, hx, rfl⟩
    -- hence f x belongs to t.image f
    have hx_img_t : f x ∈ t.image f := hsub_img hx_img
    -- unpack membership in t.image f
    rcases Finset.mem_image.mp hx_img_t with ⟨y, hy_t, hy_eq⟩
    -- use injectivity to get y = x
    have : y = x := hf (by simpa [hy_eq] )
    -- conclude x ∈ t
    simpa [this] using hy_t
  -- Second, show ¬ t ⊆ s
  have hnot : ¬ t ⊆ s := by
    intro hts
    -- from t ⊆ s, get t.image f ⊆ s.image f, contradicting hnot_img
    apply hnot_img
    intro b hb
    -- unpack membership in t.image f
    rcases Finset.mem_image.mp hb with ⟨x, hx_t, rfl⟩
    have hx_s : x ∈ s := hts hx_t
    exact Finset.mem_image.mpr ⟨x, hx_s, rfl⟩
  -- assemble the strict subset
  exact ⟨hsub, hnot⟩