import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toLeft_bind {α β γ} [DecidableEq γ]
    (u : Finset (α ⊕ β)) (f : α → Finset γ) :
    (Finset.toLeft u).biUnion f =
      u.biUnion (fun x =>
        match x with
        | Sum.inl a => f a
        | Sum.inr _ => ∅) := by
  -- Use the extensionality principle to show that two sets are equal if they have the same elements.
  ext y
  -- Simplify the membership condition using the definition of `biUnion` and `toLeft`.
  simp [Finset.mem_biUnion, Finset.mem_toLeft]
  -- Use case analysis on `y` to handle the sum type `α ⊕ β`.
  <;> cases y <;> simp_all
  -- For each case, show that the membership conditions are equivalent.
  <;> simp_all [Finset.mem_biUnion, Finset.mem_toLeft]
  <;> aesop