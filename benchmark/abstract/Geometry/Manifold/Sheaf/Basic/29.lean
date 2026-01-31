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

lemma liftProp_restrict
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} {s : Set (TopCat.of M)} (hs : s ⊆ U)
    (f : U → M') (hf : ChartedSpace.LiftProp P f) :
    ChartedSpace.LiftProp P
      (fun x : (⟨s, by
        -- we only need an `IsOpen` proof to build the `Opens` structure;
        -- provide `sorry` as requested
        sorry⟩ : Opens (TopCat.of M)) =>
        f ⟨x.1, hs x.2⟩) := by
  sorry