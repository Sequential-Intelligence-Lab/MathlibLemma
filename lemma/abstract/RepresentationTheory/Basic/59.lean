import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 60. Characterization of trivial representation via scalar action
lemma Representation.trivial_iff_smul
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    (ρ = Representation.trivial k G V)
    ↔ ∀ g v, ρ g v = v := by
  constructor
  · intro hρ g v
    simpa [hρ]  -- trivial representation acts as identity
  · intro h
    ext g v
    simpa [Representation.trivial] using h g v