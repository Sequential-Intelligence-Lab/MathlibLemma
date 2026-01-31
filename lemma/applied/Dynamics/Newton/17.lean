import Mathlib

/-- For a quadratic polynomial over a characteristic zero field, the Newton map is conjectured
to be conjugate to the squaring map on the projective line.

This statement is left as `sorry`; it is only made syntactically correct. -/
lemma Polynomial.newtonMap_quadratic_conjugate_to_square
    {K : Type*} [Field K] [CharZero K]
    (a b c : K) (hdisc : b^2 - 4 * a * c ≠ 0) :
    ∃ (φ : K → K), ∀ x,
      φ
        (Polynomial.newtonMap
          (Polynomial.C a * Polynomial.X^2 +
           Polynomial.C b * Polynomial.X +
           Polynomial.C c) x)
        =
      (φ x)^2 := by
  sorry