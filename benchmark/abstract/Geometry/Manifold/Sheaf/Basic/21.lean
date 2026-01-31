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

lemma section_spec_restrict
    (hG : LocalInvariantProp G G' P)
    {U V : (Opens (TopCat.of M))ᵒᵖ} (i : U ⟶ V)
    (f : (hG.sheaf (M := M) (M' := M')).val.obj U) :
    ChartedSpace.LiftProp P
      ((hG.sheaf (M := M) (M' := M')).val.map i f : _) := by
  sorry