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

-- 24
lemma liftProp_congr
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} {f g : U → M'}
    (hfg : ∀ x, f x = g x) :
    ChartedSpace.LiftProp P f ↔ ChartedSpace.LiftProp P g := by
  -- `hG` is not needed for this congruence; we only use pointwise equality of `f` and `g`.
  classical
  have hfun : f = g := funext hfg
  constructor
  · intro hf
    simpa [ChartedSpace.LiftProp, hfun] using hf
  · intro hg
    simpa [ChartedSpace.LiftProp, hfun] using hg