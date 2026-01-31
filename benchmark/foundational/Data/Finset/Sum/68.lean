import Mathlib

open Finset

lemma disjSum_attach_left {α β} (s : Finset α) (t : Finset β) :
    (s.attach.disjSum t) =
      (s.disjSum t).attach.filterMap
        (fun x => (none : Option ({ x // x ∈ s } ⊕ β)))
        (by
          intro a a' b hb hb'
          cases hb)
    := by
  sorry