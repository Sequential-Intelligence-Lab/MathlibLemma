import Mathlib

namespace NumberField

/-- Stub definition: number of complex places of a number field. -/
noncomputable def nrComplexPlaces (K : Type*) [Field K] [NumberField K] : ℕ := 0

end NumberField

/-- If `K` is totally real, then `nrComplexPlaces K = 0`. -/
lemma nrComplexPlaces_eq_zero_of_isTotallyReal
    (K : Type*) [Field K] [NumberField K] [NumberField.IsTotallyReal K] :
    NumberField.nrComplexPlaces K = 0 := by
  sorry