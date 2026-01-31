import Mathlib

open Polynomial

/-- Over a field, the Newton map for a monic polynomial has degree at most the square of the degree
of the polynomial as a rational map on the affine line. -/
lemma Polynomial.degree_newtonMap_le
    {K : Type*} [Field K] {P : Polynomial K}
    (hmonic : Monic P) :
    (Polynomial.degree (P * Polynomial.derivative P) : WithTop ℕ) ≤
      (2 * P.natDegree : ℕ) := by
  sorry