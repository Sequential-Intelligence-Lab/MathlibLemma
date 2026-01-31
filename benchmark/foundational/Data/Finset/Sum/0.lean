import Mathlib

open Finset

lemma disjSum_singleton_left {α β} [DecidableEq α] [DecidableEq β]
    (a : α) (t : Finset β) :
    ({a} : Finset α).disjSum t =
      insert (Sum.inl a : Sum α β)
        (t.map
          ⟨Sum.inr,
            by
              intro x y h
              cases h
              rfl⟩) := by
  sorry