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
-- 65
lemma liftPropAt_of_mem_nhds
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (f : U → M') (x : U)
    (V : Set U) (hV : V ∈ 𝓝 x)
    (h : ∀ y ∈ V, ChartedSpace.LiftPropAt P f y) :
    ChartedSpace.LiftPropAt P f x := by
  sorry
