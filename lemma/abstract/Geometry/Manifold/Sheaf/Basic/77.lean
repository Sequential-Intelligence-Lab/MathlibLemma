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

lemma liftProp_comp_inclusion_iff
    (hG : LocalInvariantProp G G' P)
    {U V : Opens (TopCat.of M)} (hUV : U ≤ V)
    (f : V → M') :
    ChartedSpace.LiftProp P (f ∘ Opens.inclusion hUV) ↔
    ∀ x : U, ChartedSpace.LiftPropAt P (f ∘ Opens.inclusion hUV) x := by
  -- Unfold the definition of `ChartedSpace.LiftProp`
  change (∀ x : U, ChartedSpace.LiftPropAt P (f ∘ Opens.inclusion hUV) x) ↔ _
  constructor <;> intro h <;> simpa using h