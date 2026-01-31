import Mathlib

lemma spectrum.isClosed_of_proper_resolventSet_open
    {R A : Type*} [TopologicalSpace R] [T1Space R]
    [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) (hopen : IsOpen (resolventSet R a))
    (hproper : resolventSet R a ≠ Set.univ) :
    IsClosed (spectrum R a) := by
  classical
  -- The spectrum is definitionally the complement of the resolvent set.
  have hcompl : spectrum R a = (resolventSet R a)ᶜ := by
    -- Unfolding the definitions shows both are `{ r | ¬ IsUnit (algebraMap R A r - a) }`.
    ext r
    rfl
  -- The complement of an open set is closed.
  have hclosed_compl : IsClosed ((resolventSet R a)ᶜ) :=
    hopen.isClosed_compl
  -- Rewrite using the equality with the spectrum.
  simpa [hcompl] using hclosed_compl