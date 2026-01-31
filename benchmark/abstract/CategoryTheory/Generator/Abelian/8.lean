import Mathlib

open CategoryTheory

/-- The coproduct of a family of coseparators is a coseparator (under suitable hypotheses). -/
lemma isCoseparator_sigma
  {C ι : Type*}
  [Category C] [Limits.HasCoproductsOfShape ι C]
  (G : ι → C)
  (hG : ∀ i, IsCoseparator (G i)) :
  IsCoseparator (∐ G) := by
  sorry