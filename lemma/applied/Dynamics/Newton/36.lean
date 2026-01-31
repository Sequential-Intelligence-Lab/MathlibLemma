import Mathlib

open Polynomial

/-- The Newton map for the minimal polynomial of an algebraic element over a field fixes that
element. -/
lemma Polynomial.isFixedPt_newtonMap_minpoly
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    {x : L} (hx : IsAlgebraic K x) :
    Function.IsFixedPt ((minpoly K x).newtonMap) x := by
  -- Expand the definition of fixed point
  unfold Function.IsFixedPt
  -- `x` is a root of its minimal polynomial
  have hx0 : aeval x (minpoly K x) = (0 : L) := by
    -- This is the standard lemma that the minimal polynomial vanishes under `aeval`
    simpa using (minpoly.aeval (A := K) (x := x) : aeval x (minpoly K x) = (0 : L))
  -- Evaluate the Newton map at `x` and use that `aeval x (minpoly K x) = 0`
  simpa [Polynomial.newtonMap, hx0]