import Mathlib

open scoped Polynomial

namespace Polynomial

/-- If the Newton map has two distinct fixed points and the derivative is a unit at both, then
the polynomial has at least two distinct roots. -/
lemma exists_two_distinct_roots_of_two_fixedPoints_newtonMap
    {R S : Type*} [Field R] [CommRing S] [Algebra R S]
    {P : R[X]} {x y : S}
    (hx : Function.IsFixedPt (newtonMap (R := R) (S := S) P) x)
    (hy : Function.IsFixedPt (newtonMap (R := R) (S := S) P) y)
    (hxy : x ≠ y)
    (hx' : IsUnit (aeval x (derivative P)))
    (hy' : IsUnit (aeval y (derivative P))) :
    ∃ r₁ r₂ : S, r₁ ≠ r₂ ∧ aeval r₁ P = 0 ∧ aeval r₂ P = 0 := by
  sorry

end Polynomial