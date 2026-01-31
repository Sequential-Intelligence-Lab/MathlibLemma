import Mathlib

universe u

-- 75. Relation between `indToCoindAux` and convolution on the group.
lemma indToCoindAux_convolution
    {k : Type u} [CommRing k]
    {G : Type u} [Group G] [Fintype G]
    {S : Subgroup G} [DecidableRel (QuotientGroup.rightRel S)]
    (A : Rep k S) (g h : G) (a : A.V) :
    ∑ x : G, Rep.indToCoindAux A g a (x * h) =
      Rep.indToCoindAux A (g * h⁻¹) a 1 := by
  sorry