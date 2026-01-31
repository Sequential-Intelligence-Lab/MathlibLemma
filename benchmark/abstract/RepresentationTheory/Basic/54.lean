import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 55. Quotient of trivial representation is trivial
lemma Representation.quotient_trivial
    {k G V : Type*} [CommRing k] [Monoid G]
    [AddCommGroup V] [Module k V]
    (W : Submodule k V) (hW : ∀ g : G, W ≤ W.comap ((Representation.trivial k G V) g)) :
    (Representation.trivial k G V).quotient W hW
    = Representation.trivial k G (V ⧸ W) := by
  sorry
