import Mathlib

open CategoryTheory

lemma PreGaloisCategory_toAut_commute_with_map
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (g : G) {X Y : C} (f : X ⟶ Y) (x : F.obj X) :
    F.map f ((PreGaloisCategory.toAut F G g).hom.app X x) =
      (PreGaloisCategory.toAut F G g).hom.app Y (F.map f x) := by
  -- Use naturality of the natural transformation `(PreGaloisCategory.toAut F G g).hom`
  have h := (PreGaloisCategory.toAut F G g).hom.naturality f
  -- `h` is an equality of morphisms in `FintypeCat`; apply both sides to `x`
  have hx := congrArg (fun k => k x) h
  -- Simplify composition of morphisms in `FintypeCat` as function composition
  -- so we get an equality of values
  simp at hx
  -- The resulting equality has the two sides swapped relative to our goal
  simpa [hx] using hx.symm