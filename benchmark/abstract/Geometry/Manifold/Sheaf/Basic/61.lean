import Mathlib

universe u

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type u} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_map_id
    (hG : LocalInvariantProp (G := G) (G' := G') (P := P))
    (U : (Opens (TopCat.of M))ᵒᵖ)
    (f :
      (hG.sheaf
        (H := H) (H' := H')
        (G := G) (G' := G') (P := P)
        (M := M) (M' := M')).1.obj U) :
    (hG.sheaf
      (H := H) (H' := H')
      (G := G) (G' := G') (P := P)
      (M := M) (M' := M')).1.map (𝟙 U) f = f := by
  sorry