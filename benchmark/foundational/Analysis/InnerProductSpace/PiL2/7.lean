import Mathlib

open scoped BigOperators

-- Use `Pi` directly; name mentions EuclideanSpace but we don't depend on it.
lemma EuclideanSpace.single_ne_zero_iff
    {ι 𝕜 : Type*} [DecidableEq ι] [Zero 𝕜]
    {i : ι} {a : 𝕜} :
    (Pi.single i a : ι → 𝕜) ≠ 0 ↔ a ≠ 0 := by
  sorry