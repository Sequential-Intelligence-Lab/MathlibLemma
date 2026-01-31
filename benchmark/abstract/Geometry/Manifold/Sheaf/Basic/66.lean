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

lemma sheaf_section_comp_apply
    (hG : LocalInvariantProp G G' P)
    (U : (Opens M)ᵒᵖ)
    (f : (hG.sheaf M M').val.obj U)
    (x : ((Opposite.unop U : Opens M)) ) :
    (f : ((Opposite.unop U : Opens M)) → M') x = f x := by
  sorry