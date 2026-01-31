import Mathlib

open Polynomial

/-- The Newton map preserves integral dependence over the base ring. -/
lemma Polynomial.isIntegral_newtonMap
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (P : R[X]) {x : S}
    (hx : IsIntegral R x) :
    IsIntegral R (Polynomial.newtonMap P x) := by
  sorry