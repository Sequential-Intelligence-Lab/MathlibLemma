import Mathlib

/-- If `P` splits completely and all roots are simple, then the derivative does not vanish
at any root. -/
lemma aeval_derivative_ne_zero_of_simple_roots
    {R S : Type*} [Field R] [Field S] [Algebra R S]
    {P : Polynomial R} {x : S}
    (hx : Polynomial.aeval x P = 0)
    (hsep : P.Separable) :
    Polynomial.aeval x P.derivative ≠ 0 := by
  -- From separability we know `P` and `P.derivative` are coprime in `R[X]`.
  -- In this version of mathlib, `P.Separable` is definitionally `IsCoprime P P.derivative`.
  have hcop_poly : IsCoprime P P.derivative := hsep
  -- Map this coprimeness along the evaluation homomorphism `aeval x : R[X] →+* S`.
  have hcop :
      IsCoprime (Polynomial.aeval x P) (Polynomial.aeval x P.derivative) := by
    simpa using
      IsCoprime.map (f := (Polynomial.aeval x).toRingHom) hcop_poly
  -- Use the fact that `P` evaluates to `0` at `x`.
  have hcop0 :
      IsCoprime (0 : S) (Polynomial.aeval x P.derivative) := by
    simpa [hx] using hcop
  -- Unpack the definition of `IsCoprime` for `(0, aeval x P.derivative)`.
  rcases hcop0 with ⟨m, n, hmn⟩
  -- `hmn : m * 0 + n * aeval x P.derivative = 1`,
  -- so simplify to get `n * aeval x P.derivative = 1`.
  have hnb : n * Polynomial.aeval x P.derivative = (1 : S) := by
    simpa [zero_mul, zero_add] using hmn
  -- Now show that `aeval x P.derivative` cannot be zero.
  intro hzero
  -- If it were zero, then the left-hand side is zero, contradicting `hnb`.
  have hzero_mul : n * Polynomial.aeval x P.derivative = (0 : S) := by
    simp [hzero]
  have : (1 : S) = 0 := by
    -- rewrite `hzero_mul` using `hnb : n * ... = 1` on the left
    simpa [hnb] using hzero_mul
  exact one_ne_zero this