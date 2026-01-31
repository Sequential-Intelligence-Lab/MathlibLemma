import Mathlib

open CategoryTheory
open PreGaloisCategory

lemma PreGaloisCategory.IsFundamentalGroup.toAutHomeo_preimage_compact
    {C : Type*} [Category C] [GaloisCategory C]
    {F : C ⥤ FintypeCat} [FiberFunctor F]
    {G : Type*} [Group G]
    [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
    [∀ X, MulAction G (F.obj X)]
    [PreGaloisCategory.IsFundamentalGroup F G]
    (K : Set G) (hK : IsCompact K) :
    IsCompact ((PreGaloisCategory.toAutHomeo F G).symm ⁻¹' K) := by
  sorry