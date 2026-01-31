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

lemma localPredicate_const
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (c : M') :
    (hG.localPredicate M M').pred (fun _ : U => c) ↔
      ChartedSpace.LiftProp P (fun _ : U => c) := by
  sorry