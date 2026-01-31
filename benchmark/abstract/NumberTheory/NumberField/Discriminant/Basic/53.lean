import Mathlib

/-- The image of the integer lattice under the mixed embedding spans a
`ℚ`-vector space of the same dimension as `K` over `ℚ`. -/
lemma integerLattice_fullRank
    (K : Type*) [Field K] [NumberField K] :
    Module.finrank ℚ (NumberField.mixedEmbedding.mixedSpace K)
      = Module.finrank ℚ K := by
  sorry