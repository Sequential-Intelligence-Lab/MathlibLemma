import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toRight_attach {α β} (u : Finset (α ⊕ β)) :
    u.toRight.attach =
      u.attach.filterMap
        (fun x =>
          match x.1 with
          | Sum.inl _ => none
          | Sum.inr b =>
              -- we just provide `sorry` for the proof that `b ∈ u.toRight`
              some ⟨b, by
                -- do not prove, just sorry
                sorry⟩)
        (by
          -- proof that the function used in `filterMap` is well-behaved on `attach`
          -- we do not prove it, just put a sorry
          sorry)
  := by
  -- main lemma body: also left as sorry
  sorry