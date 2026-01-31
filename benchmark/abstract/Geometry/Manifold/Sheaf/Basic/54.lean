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

lemma liftProp_comp_inclusion
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (f : U → M')
    {s : Set (TopCat.of M)} (hs : s ⊆ U.1)
    (hsopen : IsOpen s)
    (hf : ChartedSpace.LiftProp P f) :
    ChartedSpace.LiftProp P
      (fun x : (⟨s, hsopen⟩ : Opens (TopCat.of M)) =>
        f ⟨x.1, hs x.2⟩) := by
  sorry