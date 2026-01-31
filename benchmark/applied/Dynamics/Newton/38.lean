import Mathlib

namespace Polynomial

/-- A Newton step for the product of two polynomials splits as a sum of a Newton step for each
factor plus a higher order error term. -/
lemma newtonMap_mul
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (P Q : R[X]) (x : S) :
    newtonMap (P * Q) x =
      x - (Ring.inverse (aeval x (Polynomial.derivative (P * Q))))
          * (aeval x (P * Q)) := by
  sorry

end Polynomial