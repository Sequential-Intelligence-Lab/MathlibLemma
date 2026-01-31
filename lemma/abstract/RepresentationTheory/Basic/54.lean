import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.quotient_trivial
    {k G V : Type*} [CommRing k] [Monoid G]
    [AddCommGroup V] [Module k V]
    (W : Submodule k V) (hW : ∀ g : G, W ≤ W.comap ((Representation.trivial k G V) g)) :
    (Representation.trivial k G V).quotient W hW
    = Representation.trivial k G (V ⧸ W) := by
  ext
  -- We need to show that the induced representation on the quotient is trivial.
  -- This means we need to show that for any g in G and any coset v + W in V/W,
  -- the action of g on v + W is the identity.
  simp [Representation.trivial, Representation.quotient]
  -- Simplify the expression using the definitions of trivial representation and quotient.
  -- This will show that the action of g on v + W is indeed v + W, which is the identity action.
  <;> aesop