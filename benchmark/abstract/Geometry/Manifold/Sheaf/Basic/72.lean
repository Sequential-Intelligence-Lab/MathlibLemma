import Mathlib

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}

-- Put M and M' in the same universe to match localPredicate's expected types
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma localPredicate_iff_liftProp_restrict_top
    (hG : LocalInvariantProp G G' P)
    (f : (⊤ : Opens (TopCat.of M)) → M') :
    (hG.localPredicate M M').pred f ↔ ChartedSpace.LiftProp P f := by
  sorry