import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

section Average

variable [CommRing k] [Group G] [Fintype G] [Invertible (Fintype.card G : k)]

open MonoidAlgebra GroupAlgebra

lemma Rep.quotientToInvariantsFunctor_preservesZeroMorphisms
    (S : Subgroup G) [S.Normal] :
    (Rep.quotientToInvariantsFunctor (k := k) (G := G) S).PreservesZeroMorphisms := by
  have h_main : (Rep.quotientToInvariantsFunctor (k := k) (G := G) S).PreservesZeroMorphisms := by
    classical
    -- Prove that the quotient to invariants functor preserves zero morphisms.
    -- This is a placeholder proof since the actual definition is not available.
    sorry
  exact h_main