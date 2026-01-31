import Mathlib

/-- A lemma stating that the mixed embedding of a number field is injective. -/
lemma mixedEmbedding_injective
    (K : Type*) [Field K] [NumberField K] :
    Function.Injective (NumberField.mixedEmbedding K) := by
  sorry
