import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.subrepresentation_trivial
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (W : Submodule k V) (hW : ∀ g : G, W ≤ W.comap ((Representation.trivial k G V) g)) :
    (Representation.trivial k G V).subrepresentation W hW
    = Representation.trivial k G W := by
  ext
  simp [Representation.subrepresentation_apply, Representation.trivial]
  <;> aesop