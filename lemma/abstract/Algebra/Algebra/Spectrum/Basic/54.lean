import Mathlib

lemma spectrum.nonempty_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A] :
    ∀ a : A, (spectrum R a).Nonempty ↔ resolventSet R a ≠ Set.univ := by
  intro a
  classical
  -- Spectrum is the complement of the resolvent set
  have hcompl : spectrum R a = (resolventSet R a)ᶜ := by
    ext r
    simp [spectrum, resolventSet]
  constructor
  · -- (spectrum R a).Nonempty → resolventSet R a ≠ Set.univ
    intro hSpect
    by_contra hRu
    -- Then the spectrum would be empty, contradicting hSpect
    have hEmpty : spectrum R a = (∅ : Set R) := by
      calc
        spectrum R a = (resolventSet R a)ᶜ := hcompl
        _ = (Set.univ : Set R)ᶜ := by simpa [hRu]
        _ = (∅ : Set R) := by simp
    exact hSpect.ne_empty hEmpty
  · -- resolventSet R a ≠ Set.univ → (spectrum R a).Nonempty
    intro hRuNe
    by_contra hSpect
    -- From ¬Nonempty, we get spectrum = ∅
    have hEmpty : spectrum R a = (∅ : Set R) :=
      Set.not_nonempty_iff_eq_empty.mp hSpect
    -- So the complement of the resolvent set is empty
    have hcomplEmpty : (resolventSet R a)ᶜ = (∅ : Set R) := by
      simpa [hcompl] using hEmpty
    -- Taking into account that the complement is empty,
    -- the resolvent set must be univ
    have hRu : resolventSet R a = (Set.univ : Set R) := by
      apply Set.eq_univ_iff_forall.mpr
      intro r
      by_contra hr
      -- hr : r ∉ resolventSet R a
      have : r ∈ (resolventSet R a)ᶜ := hr
      have : r ∈ (∅ : Set R) := by simpa [hcomplEmpty] using this
      exact this.elim
    exact hRuNe hRu