import Mathlib

/-- If `P` splits completely and all roots are simple, then the derivative does not vanish
at any root. -/
lemma aeval_derivative_ne_zero_of_simple_roots
    {R S : Type*} [Field R] [Field S] [Algebra R S]
    {P : Polynomial R} {x : S}
    (hx : Polynomial.aeval x P = 0)
    (hsep : P.Separable) :
    Polynomial.aeval x P.derivative ≠ 0 := by
  sorry