import Mathlib

open Polynomial

/-- If all coefficients of `P` lie in a subfield `L` of `K`, then the Newton map on elements of `L`
coincides with the Newton map computed in `K`. -/
lemma Polynomial.newtonMap_restrict_scalars_subfield
    {K L : Type*} [Field K] [Field L] [Algebra L K]
    (P : Polynomial L) {x : L} :
    (Polynomial.map (algebraMap L K) P).newtonMap (algebraMap L K x) =
      algebraMap L K (P.newtonMap x) := by
  sorry