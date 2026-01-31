import Mathlib

lemma resolventSet.nonempty_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A] :
    ∀ a : A, (resolventSet R a).Nonempty ↔ spectrum R a ≠ Set.univ := by
  intro a
  constructor
  · -- (resolventSet R a).Nonempty → spectrum R a ≠ Set.univ
    rintro ⟨r, hr⟩
    -- hr : r ∈ resolventSet R a
    -- Turn membership in resolvent set into a unit statement
    have hr' : IsUnit (algebraMap R A r - a) := by
      simpa [resolventSet] using hr
    -- Suppose spectrum R a = univ and derive a contradiction
    intro h_univ
    have hs : r ∈ spectrum R a := by
      simpa [h_univ]
    have hnot : ¬ IsUnit (algebraMap R A r - a) := by
      simpa [spectrum] using hs
    exact hnot hr'
  · -- spectrum R a ≠ Set.univ → (resolventSet R a).Nonempty
    intro hne
    -- From `S ≠ univ` we get an element not in S
    have : ∃ r : R, r ∉ spectrum R a := by
      simpa [Set.ne_univ_iff_exists_not_mem] using hne
    rcases this with ⟨r, hr⟩
    -- hr : r ∉ spectrum R a
    -- Convert this to `¬ ¬ IsUnit (...)`
    have hnn : ¬ ¬ IsUnit (algebraMap R A r - a) := by
      simpa [spectrum] using hr
    -- Use classical logic to remove double negation
    classical
    have hu : IsUnit (algebraMap R A r - a) :=
      not_not.mp hnn
    -- Hence r is in the resolvent set
    refine ⟨r, ?_⟩
    simpa [resolventSet] using hu