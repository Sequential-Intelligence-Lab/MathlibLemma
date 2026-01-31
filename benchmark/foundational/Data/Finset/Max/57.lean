import Mathlib

theorem Finset.min'_eq_min'_image_subtype {α} [LinearOrder α] {p : α → Prop} [DecidablePred p]
    (s : Finset {x // p x}) (hs : s.Nonempty) :
    s.min' hs = ⟨(s.image Subtype.val).min' (hs.image _),
      by
        have : (s.image Subtype.val).Nonempty := hs.image _
        sorry⟩ := by
  sorry
