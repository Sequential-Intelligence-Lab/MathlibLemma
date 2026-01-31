import Mathlib

universe u v

open Polynomial

/-- Local definition of a Newton map for a polynomial `P` at a point `x`. -/
noncomputable def Polynomial.newtonMapLocal
    {R : Type u} {S : Type v} [CommRing R] [CommRing S] [Algebra R S]
    (P : Polynomial R) (x : S) : S :=
  x - (Ring.inverse (aeval x (Polynomial.derivative P))) * aeval x P

/-- Newton map is compatible with polynomial composition in a controlled way. -/
lemma Polynomial.newtonMap_comp
    {R : Type u} {S : Type v} [CommRing R] [CommRing S] [Algebra R S]
    (P Q : Polynomial R) (x : S) :
    Polynomial.newtonMapLocal (P.comp Q) x =
      x - (Ring.inverse (aeval x (Polynomial.derivative (P.comp Q))))
          * aeval x (P.comp Q) := by
  sorry