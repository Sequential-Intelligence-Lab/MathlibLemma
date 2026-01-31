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

lemma sheaf_section_on_empty_unique
    (hG : LocalInvariantProp G G' P)
    (U : (Opens (TopCat.of M))ᵒᵖ)
    (hU : (unop U) = (⊥ : Opens (TopCat.of M))) :
    Subsingleton ((hG.sheaf (M := M) (M' := M')).val.obj U) := by
  sorry