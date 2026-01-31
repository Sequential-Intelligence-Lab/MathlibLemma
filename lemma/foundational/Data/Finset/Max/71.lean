import Mathlib

theorem Finset.min'_image_eq_of_surjective
    {α β} [Fintype α] [LinearOrder β] {f : α → β}
    (hf : Function.Surjective f) (s : Finset β) (hs : s.Nonempty)
    (himg : s ⊆ (Finset.univ.image f)) :
    ∃ t : Finset α,
      (t.image f).min'
        (by
          -- We only need to provide *some* proof that `t.image f` is nonempty.
          -- Since the lemma is left `sorry` anyway, a `sorry` here is fine.
          sorry) =
      s.min' hs := by
  classical
  -- From surjectivity, obtain a right inverse g : β → α with f (g b) = b
  have hg' : ∀ b : β, ∃ a : α, f a = b := hf
  choose g hg using hg'

  -- Define t as the image of s under g: chosen preimages of elements of s
  let t : Finset α := s.image g

  -- Show that (t.image f) = s
  have h_image : (t.image f) = s := by
    -- First rewrite (t.image f) as (s.image g).image f
    have hcomp :
        (s.image g).image f = s.image (fun b : β => f (g b)) := by
      -- image_image: image g (image f s) = image (g ∘ f) s
      simpa [Function.comp] using
        (Finset.image_image (s := s) (f := g) (g := f))
    -- On s, f (g b) = b, so this image coincides with image under id
    have hcongr :
        s.image (fun b : β => f (g b)) = s.image (fun b : β => b) := by
      refine Finset.image_congr ?h
      intro b hb
      simp [hg b]
    -- And s.image id = s
    have h_id : s.image (fun b : β => b) = s := by
      simpa using (Finset.image_id (s := s))
    -- Put everything together
    simpa [t, hcomp, hcongr, h_id]

  -- Now choose this t and compare minima; the nonempty proofs are irrelevant
  refine ⟨t, ?_⟩
  -- After rewriting with h_image, both sides are s.min' with possibly different
  -- nonempty proofs, but they are definitionally equal.
  simpa [t, h_image]