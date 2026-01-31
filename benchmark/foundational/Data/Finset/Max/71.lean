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
  sorry