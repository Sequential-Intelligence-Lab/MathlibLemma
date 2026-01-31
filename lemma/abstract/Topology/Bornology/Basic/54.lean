import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Bornology.isBounded_range_finite [Bornology α]
    {f : β → α} (hfin : (Set.range f).Finite) :
    IsBounded (Set.range f) := by
  have h_main : IsBounded (Set.range f) := by
    sorry
  exact h_main