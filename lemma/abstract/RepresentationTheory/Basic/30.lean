import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.dual_trivial
    {k G V : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V] :
    Representation.dual (ρV := Representation.trivial k G V)
    = Representation.trivial k G (Module.Dual k V) := by
  -- Use the definition of the dual representation
  rw [Representation.dual]
  -- Use the definition of the trivial representation
  rw [Representation.trivial]
  -- Use the definition of the trivial representation for the dual space
  rw [Representation.trivial]
  -- Simplify the expression using the fact that the identity matrix is its own inverse and transpose
  simp [Representation.trivial, Module.Dual]
  -- The identity matrix acts as the identity on the dual space
  <;> ext
  <;> simp [Representation.trivial, Module.Dual]
  <;> aesop