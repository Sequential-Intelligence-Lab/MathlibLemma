import Mathlib

namespace Polynomial

/-- If two polynomials have the same derivative and agree at a point,
then their Newton maps coincide at that point. -/
lemma newtonMap_eq_newtonMap_of_derivative_eq_aeval_eq
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (P Q : R[X]) (x : S)
    (hderiv : derivative P = derivative Q)
    (hval : aeval x P = aeval x Q) :
    newtonMap P x = newtonMap Q x := by
  unfold newtonMap
  have hderiv_aeval : aeval x (derivative P) = aeval x (derivative Q) :=
    congrArg (aeval x) hderiv
  simpa [hval, hderiv_aeval]

end Polynomial