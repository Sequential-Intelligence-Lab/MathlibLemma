import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 56. subrepresentation of trivial representation is trivial
lemma Representation.subrepresentation_trivial
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (W : Submodule k V) (hW : ∀ g : G, W ≤ W.comap ((Representation.trivial k G V) g)) :
    (Representation.trivial k G V).subrepresentation W hW
    = Representation.trivial k G W := by
  sorry
