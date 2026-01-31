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

lemma sheaf_section_comp_inclusion
    (hG : LocalInvariantProp G G' P)
    {U V : Opens (TopCat.of M)} (i : U ⟶ V)
    (f : (LocalInvariantProp.sheaf (M:=M) (M':=M') hG).val.obj (op V)) :
    ((LocalInvariantProp.sheaf (M:=M) (M':=M') hG).val.map i.op f : _) =
      ((LocalInvariantProp.sheaf (M:=M) (M':=M') hG).val.map i.op f : _) := by
  sorry