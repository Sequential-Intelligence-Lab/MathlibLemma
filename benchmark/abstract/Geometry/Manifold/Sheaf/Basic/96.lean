import Mathlib

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_subsingleton_of_subsingleton_codomain
    (hG : LocalInvariantProp G G' P)
    [Subsingleton M']
    (U : (Opens (TopCat.of M))ᵒᵖ) :
    Subsingleton ((hG.sheaf M M').val.obj U) := by
  sorry