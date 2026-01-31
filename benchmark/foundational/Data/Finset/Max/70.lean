import Mathlib

theorem Finset.max'_image_eq_of_surjective
    {α β} [LinearOrder β] {f : α → β}
    (hf : Function.Surjective f) :
    ∀ (s : Finset β) (hs : s.Nonempty),
      ∃ t : Finset α, ∃ ht : t.Nonempty,
        (t.image f).max' (by
          -- we just use the provided nonempty witness
          simpa using ht.image f) = s.max' hs := by
  intro s hs
  -- proof omitted as requested
  sorry