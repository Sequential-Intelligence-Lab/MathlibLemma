import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toLeft_nonempty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toLeft.Nonempty ↔ ∃ a, Sum.inl a ∈ u := by
  constructor <;> intro h
  -- Forward direction: If u.toLeft is nonempty, then there exists an a such that Sum.inl a ∈ u.
  -- We use the fact that u.toLeft being nonempty implies there is an element a in u.toLeft.
  -- By the definition of u.toLeft, a is in u.toLeft if and only if Sum.inl a ∈ u.
  <;> simp_all [Finset.Nonempty, Finset.mem_toLeft, Finset.mem_toRight]
  -- Reverse direction: If there exists an a such that Sum.inl a ∈ u, then u.toLeft is nonempty.
  -- Given that Sum.inl a ∈ u, by the definition of u.toLeft, a must be in u.toLeft.
  -- Therefore, u.toLeft contains at least one element, making it nonempty.
  <;> use a
  <;> simp_all [Finset.Nonempty, Finset.mem_toLeft, Finset.mem_toRight]