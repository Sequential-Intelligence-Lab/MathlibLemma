import Mathlib

lemma resolventSet.nonempty_of_closed_spectrum
    {R A : Type*} [TopologicalSpace R]
    [CommRing R] [Ring A] [Algebra R A]
    (a : A) (hclosed : IsClosed (spectrum R a)) :
    (resolventSet R a).Nonempty ∨ spectrum R a = Set.univ := by
  classical
  -- Case split on whether the spectrum is the whole space
  by_cases hspec : spectrum R a = Set.univ
  · -- If the spectrum is univ, we are in the right disjunct
    exact Or.inr hspec
  · -- Otherwise, the complement of the spectrum is nonempty
    have hcompl : (spectrum R a)ᶜ.Nonempty :=
      Set.nonempty_compl.mpr hspec
    rcases hcompl with ⟨r, hr⟩
    -- From r ∈ (spectrum R a)ᶜ, we get r ∉ spectrum R a
    have hnot : r ∉ spectrum R a := by
      simpa [Set.mem_compl] using hr
    -- Unfold the definition of the spectrum to get ¬ ¬ IsUnit ...
    dsimp [spectrum] at hnot
    -- So we obtain IsUnit (algebraMap R A r - a)
    have hunit : IsUnit (algebraMap R A r - a) :=
      not_not.mp hnot
    -- By definition of resolventSet, this means r ∈ resolventSet R a
    have hres : r ∈ resolventSet R a := by
      simpa [resolventSet] using hunit
    -- Hence the resolvent set is nonempty
    exact Or.inl ⟨r, hres⟩