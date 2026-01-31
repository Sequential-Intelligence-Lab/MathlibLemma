import Mathlib

open CategoryTheory

-- 22
lemma PreGaloisCategory.toAut_restrict_subgroup
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsNaturalSMul F G]
    (H : Subgroup G) :
    ∀ g ∈ H, ∀ (X : C) (x : F.obj X),
      (PreGaloisCategory.toAut F G g).hom.app X x = g • x := by
  intro g hg X x
  -- This is exactly the defining property of `toAut` coming from `IsNaturalSMul`.
  simpa using
    (PreGaloisCategory.toAut_hom_app_apply
      (F := F) (G := G) (g := g) (X := X) (x := x))