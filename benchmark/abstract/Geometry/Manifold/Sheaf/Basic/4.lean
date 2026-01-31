import Mathlib

universe u uH uH' uG uG'

variable {H : Type uH} [TopologicalSpace H]
variable {H' : Type uH'} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma localPredicate_pointwise_of_locality
    (hG : LocalInvariantProp G G' P) {U : Opens (TopCat.of M)}
    (f : U → M') :
    (hG.localPredicate M M').pred f ↔
      ∀ x : U, ∃ (V : Opens (TopCat.of M)) (hx : x.1 ∈ V),
        (x.1 ∈ V) ∧
        ChartedSpace.LiftProp P
          (f ∘ Opens.inclusion (show V ≤ U from by sorry)) := by
  sorry