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

lemma sheaf_section_restrict
    (hG : LocalInvariantProp G G' P)
    {U V : Opens (TopCat.of M)} (hUV : U ≤ V)
    (f : (hG.sheaf (M:=M) (M':=M')).val.obj (op V)) :
    ((hG.sheaf (M:=M) (M':=M')).val.map (homOfLE hUV).op f).1 =
      (f.1 ∘ Opens.inclusion hUV) := by
  sorry