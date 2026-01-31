import Mathlib

open Polynomial

/-- Under integrality assumptions, the nilpotent/semisimple decomposition from Newton iteration
is defined over the base ring. -/
lemma Polynomial.exists_nilpotent_sub_and_aeval_eq_zero_integral
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (P : R[X]) {x : S}
    (hx : IsIntegral R x)
    (h : IsNilpotent (aeval x P))
    (h' : IsUnit (aeval x (Polynomial.derivative P))) :
    ∃! r : S, IsNilpotent (x - r) ∧ aeval r P = 0 ∧ IsIntegral R r := by
  sorry

/-- Under integrality assumptions, the nilpotent/semisimple decomposition from Newton iteration
is defined over the base ring. -/
lemma exists_nilpotent_sub_and_aeval_eq_zero_integral
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (P : R[X]) {x : S}
    (hx : IsIntegral R x)
    (h : IsNilpotent (aeval x P))
    (h' : IsUnit (aeval x (Polynomial.derivative P))) :
    ∃! r : S, IsNilpotent (x - r) ∧ aeval r P = 0 ∧ IsIntegral R r := by
  sorry