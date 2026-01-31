import Mathlib

/-- If `P` is a monic polynomial over an integral domain and `x` is almost a root in a field of
fractions in the sense of nilpotency, then the root obtained from Newton iteration is integral
over the base ring. -/
lemma Polynomial.integral_root_from_newton_fractionRing
    {R K : Type*}
    [CommRing R] [IsDomain R]
    [Field K]
    [Algebra R K] [IsFractionRing R K]
    (P : Polynomial R) (hmonic : Polynomial.Monic P) {x : K}
    (hnil : IsNilpotent (aeval x P))
    (hunit : IsUnit (aeval x (Polynomial.derivative P))) :
    ∃ r : K, IsIntegral R r ∧ IsNilpotent (x - r) ∧ aeval r P = 0 := by
  sorry