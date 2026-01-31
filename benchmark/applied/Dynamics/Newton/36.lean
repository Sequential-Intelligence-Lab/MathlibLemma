import Mathlib

open Polynomial

/-- The Newton map for the minimal polynomial of an algebraic element over a field fixes that
element. -/
lemma Polynomial.isFixedPt_newtonMap_minpoly
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    {x : L} (hx : IsAlgebraic K x) :
    Function.IsFixedPt ((minpoly K x).newtonMap) x := by
  sorry