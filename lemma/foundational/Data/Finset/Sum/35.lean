import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toRight_nonempty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toRight.Nonempty ↔ ∃ b, Sum.inr b ∈ u := by
  constructor
  -- Forward direction: If u.toRight is nonempty, then there exists a b such that Sum.inr b ∈ u.
  intro h
  obtain ⟨b, hb⟩ := h
  refine' ⟨b, _⟩
  -- Simplify the membership condition to show that Sum.inr b ∈ u.
  simp_all [Finset.toRight, Finset.mem_filter]
  -- Reverse direction: If there exists a b such that Sum.inr b ∈ u, then u.toRight is nonempty.
  rintro ⟨b, hb⟩
  -- Use the given b and its membership proof hb to show that u.toRight is nonempty.
  refine' ⟨b, _⟩
  simp_all [Finset.toRight, Finset.mem_filter]