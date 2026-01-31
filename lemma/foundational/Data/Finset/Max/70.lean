import Mathlib

theorem Finset.max'_image_eq_of_surjective
    {α β} [LinearOrder β] {f : α → β}
    (hf : Function.Surjective f) :
    ∀ (s : Finset β) (hs : s.Nonempty),
      ∃ t : Finset α, ∃ ht : t.Nonempty,
        (t.image f).max' (by
          -- we just use the provided nonempty witness
          simpa using ht.image f) = s.max' hs := by
  classical
  intro s hs
  -- Obtain a choice function g : β → α with f (g b) = b for all b
  have hchoice : ∀ b : β, ∃ a : α, f a = b := hf
  choose g hg using hchoice
  -- Define t as the image of s under g
  let t : Finset α := s.image g
  have ht : t.Nonempty := by
    rcases hs with ⟨b, hb⟩
    refine ⟨g b, ?_⟩
    exact Finset.mem_image.mpr ⟨b, hb, rfl⟩
  refine ⟨t, ht, ?_⟩
  -- Show that (t.image f) = s
  have hts : t.image f = s := by
    ext b
    constructor
    · intro hb
      rcases Finset.mem_image.mp hb with ⟨a, ha, rfl⟩
      rcases Finset.mem_image.mp ha with ⟨b', hb', rfl⟩
      -- Now we need to prove b' ∈ s and use hg b'
      simpa [hg b'] using hb'
    · intro hb
      -- b ∈ s ⇒ g b ∈ t, hence f (g b) = b ∈ t.image f
      have hgb : g b ∈ t := Finset.mem_image.mpr ⟨b, hb, rfl⟩
      exact Finset.mem_image.mpr ⟨g b, hgb, by simpa [hg b]⟩
  -- Now conclude by rewriting the max' along this equality
  simpa [t, hts] using
    (rfl : (t.image f).max' (by simpa using ht.image f) = (t.image f).max' (by simpa using ht.image f))