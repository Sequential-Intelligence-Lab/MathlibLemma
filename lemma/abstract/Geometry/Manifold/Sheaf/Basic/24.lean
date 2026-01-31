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

lemma liftPropAt_congr
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} {f g : U → M'}
    (hfg : ∀ x, f x = g x) (x : U) :
    ChartedSpace.LiftPropAt P f x ↔ ChartedSpace.LiftPropAt P g x := by
  -- Turn pointwise equality into function equality.
  have hfg' : f = g := funext hfg
  -- Substitute `g` by `f` in the goal.
  subst hfg'
  -- The goal is now `ChartedSpace.LiftPropAt P f x ↔ ChartedSpace.LiftPropAt P f x`.
  rfl