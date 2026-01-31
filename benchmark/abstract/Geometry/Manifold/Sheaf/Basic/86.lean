import Mathlib

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}

-- Put M and M' in the same universe so they can be passed to `sheaf` together
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_restrict_eq_self
    (hG : LocalInvariantProp G G' P)
    (U : Opens (TopCat.of M)) :
    (hG.sheaf M M').val.map (𝟙 (op U)) = 𝟙 _ := by
  sorry