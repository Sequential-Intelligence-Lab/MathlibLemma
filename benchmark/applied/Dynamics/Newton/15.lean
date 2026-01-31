import Mathlib

/-- Newton map preserves algebraic elements over the base field. -/
lemma Polynomial.algebraic_newtonMap
    {K : Type*} [Field K]
    (P : Polynomial K) {x : K}
    (hx : IsAlgebraic K x) :
    IsAlgebraic K (P.newtonMap x) := by
  sorry