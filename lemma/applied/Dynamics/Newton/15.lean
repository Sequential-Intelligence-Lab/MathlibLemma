import Mathlib

/-- Newton map preserves algebraic elements over the base field. -/
lemma Polynomial.algebraic_newtonMap
    {K : Type*} [Field K]
    (P : Polynomial K) {x : K}
    (hx : IsAlgebraic K x) :
    IsAlgebraic K (P.newtonMap x) := by
  classical
  -- We work over the algebra `K` over itself.
  -- Convert algebraicity to integrality.
  refine (isAlgebraic_iff_isIntegral (K := K) (A := K)).2 ?_
  -- Any element of `K` is integral over `K` via the algebra map,
  -- and `algebraMap K K` is the identity.
  simpa using
    (isIntegral_algebraMap : IsIntegral K (algebraMap K K (P.newtonMap x)))