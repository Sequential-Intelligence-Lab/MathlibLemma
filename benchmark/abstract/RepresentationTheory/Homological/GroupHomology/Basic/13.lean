import Mathlib

universe u v

open CategoryTheory

def coinvariantsTensorObj_X
    {k : Type u} {G : Type u} [Field k] [Group G]
    {α : Type v} [AddRightCancelSemigroup α] [One α]
    (A : Rep k G) (P : ChainComplex (Rep k G) α)
    (i : α) :
    (HomologicalComplex.coinvariantsTensorObj (A := A) (P := P)).X i ≅
      ((Rep.coinvariantsTensor (k := k) (G := G)).obj A).obj (P.X i) := by
  sorry