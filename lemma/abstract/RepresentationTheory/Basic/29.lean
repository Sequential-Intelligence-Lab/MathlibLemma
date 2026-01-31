import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.tprod_trivial_trivial
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W] :
    Representation.tprod
      (Representation.trivial k G V)
      (Representation.trivial k G W)
    = Representation.trivial k G (TensorProduct k V W) := by
  ext1 g
  simp [Representation.tprod, Representation.trivial, Functor.map_id]
  -- Simplify the expression to show that the tensor product of the trivial representations is the trivial representation on the tensor product space.
  <;> rfl