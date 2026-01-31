import Mathlib

open CategoryTheory

-- We assume the relevant namespace and structures already exist in Mathlib.
lemma PreGaloisCategory.toAut_eq_iff
    {C : Type*} [Category C]
    (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    {g h : G}
    (hcond : ∀ (X : C) (x : F.obj X), g • x = h • x) :
    PreGaloisCategory.toAut F G g = PreGaloisCategory.toAut F G h := by
  -- Two automorphisms of a functor into `FintypeCat` are equal if they agree
  -- on each object and each element of the underlying finite type.
  ext X x
  -- The action of `g` and `h` at `X` on `x` is given by `g • x` and `h • x`;
  -- `hcond` asserts these are equal.
  simpa [hcond X x]