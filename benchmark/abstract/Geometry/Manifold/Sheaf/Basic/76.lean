import Mathlib

universe u v w

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type u} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

def sheaf_mk_section
    (hG : LocalInvariantProp G G' P)
    {U : (Opens M)ᵒᵖ}
    [ChartedSpace H (↥(Opposite.unop U))]
    (f : ↥(Opposite.unop U) → M')
    (hf : ChartedSpace.LiftProp P f) :
    (hG.sheaf M M').val.obj U :=
by
  sorry