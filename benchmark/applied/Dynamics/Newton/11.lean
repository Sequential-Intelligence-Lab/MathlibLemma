import Mathlib

/-- If `P` has only simple roots and `P(x)` is nilpotent, then `aeval x (derivative P)` is a unit
in any reduced algebra. -/
lemma Polynomial.isUnit_aeval_derivative_of_nilpotent_value_simple_roots
    {R S : Type*} [Field R] [CommRing S] [IsReduced S] [Algebra R S]
    (P : Polynomial R) (x : S)
    (hsep : Polynomial.Separable P)
    (h : IsNilpotent (aeval x P)) :
    IsUnit (aeval x (Polynomial.derivative P)) := by
  sorry