import Mathlib

theorem Finset.max'_eq_max'_image_subtype {α} [LinearOrder α] {p : α → Prop} [DecidablePred p]
    (s : Finset {x // p x}) (hs : s.Nonempty) :
    s.max' hs = ⟨(s.image Subtype.val).max' (hs.image _),
      by
        have : (s.image Subtype.val).Nonempty := hs.image _
        sorry⟩ := by
  sorry
