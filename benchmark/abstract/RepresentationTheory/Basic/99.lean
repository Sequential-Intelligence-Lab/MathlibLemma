import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 100. Tensor power of representation as repeated tprod
def Representation.tensorPow
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) (n : ℕ) :
    Representation k G (Fin n → V) := by
  sorry