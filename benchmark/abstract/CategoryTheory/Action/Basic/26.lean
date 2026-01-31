import Mathlib

open CategoryTheory

lemma comp_isIso
    {V : Type*} [Category V]
    {M N K : V} (f : M ⟶ N) (g : N ⟶ K)
    [IsIso f] [IsIso g] : IsIso (f ≫ g) := by
  sorry