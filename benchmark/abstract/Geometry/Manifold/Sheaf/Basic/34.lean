import Mathlib

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type v) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma liftProp_of_liftPropAt_subset
    (hG : LocalInvariantProp G G' P)
    {U : Set M} (f : M → M')
    (h : ∀ x : M, x ∈ U → ChartedSpace.LiftPropAt P f x) :
    ChartedSpace.LiftProp P f := by
  sorry