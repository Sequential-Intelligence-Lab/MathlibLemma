import Mathlib

/-- Newton map for the mapped polynomial over a target algebra identifies with Newton map
for the base polynomial and the structure map. -/
lemma Polynomial.newtonMap_map_algebraMap
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (P : Polynomial R) (x : R) :
    (Polynomial.newtonMap (P.map (algebraMap R S)) (algebraMap R S x)) =
      algebraMap R S (Polynomial.newtonMap P x) := by
  sorry