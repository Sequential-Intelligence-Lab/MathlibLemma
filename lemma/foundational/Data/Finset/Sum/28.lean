import Mathlib

lemma disjSum_image_eq_disjUnion {α β γ} [DecidableEq γ]
    (s : Finset α) (t : Finset β) (f : α ⊕ β → γ)
    (hf : Function.Injective f) :
    (s.disjSum t).image f =
      (s.image (f ∘ Sum.inl)) ∪ (t.image (f ∘ Sum.inr)) := by
  -- Prove equality of finsets via extensionality on membership.
  ext z
  constructor
  · -- → direction: from image of disjSum to union of images
    intro hz
    -- Unpack membership in image
    rcases Finset.mem_image.mp hz with ⟨x, hx, rfl⟩
    -- x ∈ s.disjSum t
    -- Use the membership characterization of disjSum
    rcases Finset.mem_disjSum.mp hx with hx | hx
    · -- x is on the left: x = Sum.inl a for some a ∈ s
      rcases hx with ⟨a, ha, rfl⟩
      -- f (Sum.inl a) is in the left image
      have : f (Sum.inl a) ∈ s.image (f ∘ Sum.inl) :=
        Finset.mem_image.mpr ⟨a, ha, rfl⟩
      -- Hence in the union
      exact (Finset.mem_union).mpr (Or.inl this)
    · -- x is on the right: x = Sum.inr b for some b ∈ t
      rcases hx with ⟨b, hb, rfl⟩
      -- f (Sum.inr b) is in the right image
      have : f (Sum.inr b) ∈ t.image (f ∘ Sum.inr) :=
        Finset.mem_image.mpr ⟨b, hb, rfl⟩
      -- Hence in the union
      exact (Finset.mem_union).mpr (Or.inr this)
  · -- ← direction: from union of images to image of disjSum
    intro hz
    rcases (Finset.mem_union).mp hz with hz | hz
    · -- z is in the image of the left side
      rcases Finset.mem_image.mp hz with ⟨a, ha, rfl⟩
      -- Build an element of s.disjSum t on the left
      apply Finset.mem_image.mpr
      refine ⟨Sum.inl a, ?_, rfl⟩
      -- Show Sum.inl a ∈ s.disjSum t
      exact Finset.mem_disjSum.mpr (Or.inl ⟨a, ha, rfl⟩)
    · -- z is in the image of the right side
      rcases Finset.mem_image.mp hz with ⟨b, hb, rfl⟩
      -- Build an element of s.disjSum t on the right
      apply Finset.mem_image.mpr
      refine ⟨Sum.inr b, ?_, rfl⟩
      -- Show Sum.inr b ∈ s.disjSum t
      exact Finset.mem_disjSum.mpr (Or.inr ⟨b, hb, rfl⟩)