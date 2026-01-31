import Mathlib

open Polynomial

/-- If all Newton iterates of `x` for polynomial `P` lie in a subring `S`, then the root given by
the nilpotent-plus-root decomposition also lies in `S`.

This is just a *statement* lemma with a `sorry` proof; it is made to be well-typed and compile. -/
lemma Polynomial.root_in_subring_of_iterates_in_subring
    {R S T : Type*} [CommRing R] [CommRing S] [CommRing T]
    [Algebra R S] [Algebra R T] [Algebra S T] [IsScalarTower R S T]
    (P : R[X]) (f : S →+* T)
    {x : S}
    (hxnil : IsNilpotent (aeval (f x) P))
    (hxunit : IsUnit (aeval (f x) (derivative P)))
    (hclosed :
      ∀ n, ∃ y ∈ Set.range f,
        (newtonMap P)^[n] (f x) = y) :
    ∃ r ∈ Set.range f,
      IsNilpotent (f x - r) ∧
      aeval r P = 0 := by
  sorry