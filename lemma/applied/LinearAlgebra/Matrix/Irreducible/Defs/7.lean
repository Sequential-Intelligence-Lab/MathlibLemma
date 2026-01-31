import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Quiver.Path.length_comp'
    {V : Type*} [Quiver V] {a b c : V}
    (p₁ : Quiver.Path a b) (p₂ : Quiver.Path b c) :
    (p₁.comp p₂).length = p₁.length + p₂.length := by
  induction p₁ with
  | nil =>
    -- Base case: p1 is the empty path.
    -- The concatenated path p1.comp p2 is simply p2.
    simp [Quiver.Path.length, Quiver.Path.comp]
  | cons p₁' p₁'' ih =>
    -- Inductive step: Assume the statement holds for p1' (length n).
    -- Now consider p1 = p1' followed by p1'' (length n + 1).
    -- By the inductive hypothesis, p1'.comp p2 has length n + p2.length.
    -- Adding p1'' increases the length by 1, resulting in (n + 1) + p2.length.
    simp_all [Quiver.Path.length, Quiver.Path.comp, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]