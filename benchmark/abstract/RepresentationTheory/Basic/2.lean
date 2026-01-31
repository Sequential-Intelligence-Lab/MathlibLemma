import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 3. Trivial representation on a subsingleton module
lemma Representation.trivial_of_subsingleton
    (k G V : Type*) [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Subsingleton V] [Module k V] :
    Representation.IsTrivial (Representation.trivial k G V) := by
  sorry