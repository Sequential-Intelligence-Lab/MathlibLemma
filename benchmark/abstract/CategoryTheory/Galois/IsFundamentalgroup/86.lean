import Mathlib

open CategoryTheory

-- 87
lemma PreGaloisCategory.IsFundamentalGroup.toAutHomeo_isOpen_preimage
    {C : Type*} [Category C] [GaloisCategory C]
    {F : C ⥤ FintypeCat} [PreGaloisCategory.FiberFunctor F]
    {G : Type*} [Group G]
    [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
    [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsFundamentalGroup F G]
    {S : Set G} (hS : IsOpen S) :
    IsOpen ((PreGaloisCategory.toAutHomeo (F := F) (G := G)).symm ⁻¹' S) := by
  sorry