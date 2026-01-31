import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_filter_right_eq {α β} (q : β → Prop) [DecidablePred q]
    (s : Finset α) (t : Finset β)
    [DecidablePred (fun x : Sum α β =>
      match x with
      | Sum.inl _ => True
      | Sum.inr b => q b)] :
    s.disjSum (t.filter q) =
      (s.disjSum t).filter
        (fun x => match x with
          | Sum.inl _ => True
          | Sum.inr b => q b) := by
  -- We will show that each set is a subset of the other.
  apply Finset.ext
  intro x
  -- Consider the cases for x being in the left-hand side or the right-hand side.
  constructor <;> simp_all [Finset.mem_filter, Finset.mem_disjSum, Sum.inl, Sum.inr]
  <;> aesop