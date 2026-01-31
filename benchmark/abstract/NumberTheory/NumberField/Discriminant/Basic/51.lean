import Mathlib

open scoped Classical
open NumberField

/-- A lemma stating that any number field with trivial unit group has small degree. -/
lemma finrank_le_of_finite_unit_group
    (K : Type*) [Field K] [NumberField K]
    [Fintype (Units (𝓞 K))] :
    Module.finrank ℚ K ≤ 2 := by
  sorry