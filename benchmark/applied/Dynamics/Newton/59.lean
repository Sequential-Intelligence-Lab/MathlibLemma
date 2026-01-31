import Mathlib

/-- For a polynomial over a finite field, the Newton iterates of any element eventually become
periodic. -/
lemma Polynomial.newtonMap_eventually_periodic_finite_field
    {F : Type*} [Field F] [Finite F]
    (P : Polynomial F) (x : F) :
    ∃ m n, m < n ∧ P.newtonMap^[m] x = P.newtonMap^[n] x := by
  sorry