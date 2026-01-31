import Mathlib

lemma resolventSet.eq_univ_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    resolventSet R a = Set.univ ↔ spectrum R a = ∅ := by
  constructor
  · -- → direction
    intro h
    apply Set.eq_empty_iff_forall_not_mem.mpr
    intro r hr
    -- From `h` every `r` is in the resolvent set
    have hres : r ∈ resolventSet R a := by
      have : r ∈ (Set.univ : Set R) := by trivial
      simpa [h] using this
    -- Translate both memberships via definitions
    have hunit : IsUnit (algebraMap R A r - a) := by
      simpa [resolventSet] using hres
    have hnot : ¬ IsUnit (algebraMap R A r - a) := by
      simpa [spectrum] using hr
    exact hnot hunit
  · -- ← direction
    intro h
    apply Set.eq_univ_iff_forall.mpr
    intro r
    -- From `h : spectrum R a = ∅`, nothing is in the spectrum
    have hs : r ∉ spectrum R a := by
      simpa [h] using (Set.not_mem_empty r)
    -- Unfold `spectrum` to get a double negation on `IsUnit`
    have hnn : ¬ ¬ IsUnit (algebraMap R A r - a) := by
      simpa [spectrum] using hs
    have hunit : IsUnit (algebraMap R A r - a) := not_not.mp hnn
    -- Thus `r` lies in the resolvent set
    simpa [resolventSet] using hunit