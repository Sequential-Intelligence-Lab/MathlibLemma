import Mathlib

/-- Subfields of a fixed number field with a bounded "discriminant-like" invariant
form a finite set. (Here we abstract the discriminant as an arbitrary function
`discr` to avoid typeclass and coercion issues in the statement.) -/
lemma finite_subfields_of_discr_bdd
    (K : Type*) [Field K] [NumberField K]
    (discr : IntermediateField ℚ K → ℤ) (N : ℕ) :
    {L : IntermediateField ℚ K | |discr L| ≤ N}.Finite := by
  sorry