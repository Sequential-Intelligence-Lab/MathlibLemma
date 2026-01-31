import Mathlib

theorem Finset.min'_subset_antisymm {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (ht : t.Nonempty) (hst : s ⊆ t) (hts : t ⊆ s) :
    s.min' hs = t.min' ht := by
  classical
  -- First, show the finsets are equal using mutual subset
  have hst_eq : s = t := by
    ext a
    constructor
    · intro ha
      exact hst ha
    · intro ha
      exact hts ha
  -- Rewrite the goal using s = t
  subst hst_eq
  -- Now both sides are s.min' with possibly different nonempty proofs
  -- Use proof irrelevance (Nonempty is a Prop, so proofs are equal)
  have h_proof_eq : hs = ht := Subsingleton.elim _ _
  -- Rewrite and close the goal
  simpa [h_proof_eq]