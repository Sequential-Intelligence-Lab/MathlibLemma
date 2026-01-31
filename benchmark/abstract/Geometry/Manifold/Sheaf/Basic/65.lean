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
-- 66
lemma liftProp_of_forall_liftPropAt_nhds
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (f : U → M')
    (h : ∀ x, ∀ᶠ y in 𝓝 x, ChartedSpace.LiftPropAt P f y) :
    ChartedSpace.LiftProp P f := by
  sorry
