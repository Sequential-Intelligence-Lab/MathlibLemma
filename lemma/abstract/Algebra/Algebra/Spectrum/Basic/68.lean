import Mathlib

lemma spectrum.eq_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A} :
    spectrum R a = spectrum R b ↔
      ∀ r : R, IsUnit (algebraMap R A r - a) ↔ IsUnit (algebraMap R A r - b) := by
  constructor
  · intro h r
    -- From equality of sets, get equivalence of membership
    have hmem : r ∈ spectrum R a ↔ r ∈ spectrum R b := by simpa [h]
    -- Translate membership into "not IsUnit" statements
    have hnot :
        ¬ IsUnit (algebraMap R A r - a) ↔
        ¬ IsUnit (algebraMap R A r - b) := by
      simpa [spectrum.mem_iff] using hmem
    -- From ¬P ↔ ¬Q, deduce P ↔ Q
    constructor
    · intro ha
      by_contra hb
      have : ¬ IsUnit (algebraMap R A r - a) :=
        (hnot.mpr hb)
      exact this ha
    · intro hb
      by_contra ha
      have : ¬ IsUnit (algebraMap R A r - b) :=
        (hnot.mp ha)
      exact this hb
  · intro h
    -- Prove equality of sets by extensionality on membership
    apply Set.ext
    intro r
    -- Translate target into "not IsUnit" and use not_congr on h r
    have hu : IsUnit (algebraMap R A r - a) ↔
              IsUnit (algebraMap R A r - b) := h r
    have hnot : ¬ IsUnit (algebraMap R A r - a) ↔
                ¬ IsUnit (algebraMap R A r - b) :=
      not_congr hu
    simpa [spectrum.mem_iff] using hnot