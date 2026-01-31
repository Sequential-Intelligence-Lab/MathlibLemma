import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 83. Character of trivial representation is constant 1
lemma Representation.trace_trivial
    {k G V : Type*} [Field k] [Group G] [Fintype G]
    [AddCommGroup V] [Module k V]
    [FiniteDimensional k V]
    [Nonempty V] :
    True := by
  sorry