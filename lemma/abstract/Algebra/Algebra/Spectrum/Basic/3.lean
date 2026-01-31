import Mathlib

lemma spectrum.eq_empty_iff_isUnit_subsingleton
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    (a : A) :
    spectrum R a = ∅ ↔ (∀ r : R, IsUnit (algebraMap R A r - a)) := by
  classical
  constructor
  · -- (→) If the spectrum is empty, then every `algebraMap R A r - a` is a unit.
    intro h
    intro r
    -- From `h`, no `r` lies in the spectrum.
    have hnot : r ∉ spectrum R a := by
      -- `Set.eq_empty_iff_forall_not_mem` gives this directly.
      have := (Set.eq_empty_iff_forall_not_mem.mp h) r
      exact this
    -- Rewrite membership using `spectrum.mem_iff`
    have : ¬ ¬ IsUnit (algebraMap R A r - a) := by
      -- `simp` converts `r ∉ spectrum R a` via `spectrum.mem_iff`.
      simpa [spectrum.mem_iff] using hnot
    -- Eliminate double negation to get `IsUnit`.
    exact not_not.mp this
  · -- (←) If all `algebraMap R A r - a` are units, then the spectrum is empty.
    intro h
    -- Use the characterization of an empty set.
    apply Set.eq_empty_iff_forall_not_mem.mpr
    intro r hr
    -- From membership in the spectrum, we get `¬ IsUnit (algebraMap R A r - a)`.
    have hr' : ¬ IsUnit (algebraMap R A r - a) := by
      simpa [spectrum.mem_iff] using hr
    -- This contradicts the hypothesis `h r`.
    exact hr' (h r)