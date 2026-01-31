import Mathlib

universe u

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_spec_top
    (hG : LocalInvariantProp G G' P)
    (f : (hG.sheaf M M').val.obj (op (⊤ : Opens (TopCat.of M)))) :
    ChartedSpace.LiftProp P (f : (⊤ : Opens (TopCat.of M)) → M') := by
  sorry