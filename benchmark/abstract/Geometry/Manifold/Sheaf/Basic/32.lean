import Mathlib

universe u v w

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type v} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type w) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type w) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma localPredicate_iff_forall_liftPropAt
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (f : U → M') :
    (hG.localPredicate M M').pred f ↔
      ∀ x : U, ChartedSpace.LiftPropAt P f x := by
  sorry