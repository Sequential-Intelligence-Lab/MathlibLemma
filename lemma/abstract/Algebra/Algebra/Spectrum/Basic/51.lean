import Mathlib

lemma spectrum.eq_univ_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a = Set.univ ↔ ∀ r : R, ¬ IsUnit (algebraMap R A r - a) := by
  constructor
  · -- forward direction
    intro h r
    -- From h, every r is in spectrum R a
    have hr : r ∈ spectrum R a := by
      have : r ∈ (Set.univ : Set R) := trivial
      simpa [h] using this
    -- translate membership to ¬ IsUnit using the API
    exact (spectrum.mem_iff.mp hr)
  · -- reverse direction
    intro h
    -- extensionality on sets
    ext r
    constructor
    · -- spectrum R a ⊆ Set.univ
      intro _; trivial
    · -- Set.univ ⊆ spectrum R a, using h
      intro _
      -- we have h r : ¬ IsUnit (algebraMap R A r - a)
      exact (spectrum.mem_iff.mpr (h r))