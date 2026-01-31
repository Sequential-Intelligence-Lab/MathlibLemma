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

lemma localPredicate_comp_chartedSpace_mk
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (f : U → M') :
    (hG.localPredicate M M').pred f →
    ∀ x, ChartedSpace.LiftPropAt P f x := by
  intro hx
  -- By definition, `(hG.localPredicate M M').pred f` is
  -- `∀ x, ChartedSpace.LiftPropAt P f x`, so we can just use `hx`.
  intro x
  exact hx x