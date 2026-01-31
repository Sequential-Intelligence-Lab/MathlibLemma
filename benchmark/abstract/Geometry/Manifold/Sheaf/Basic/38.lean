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

lemma sheaf_section_const
    (hG : LocalInvariantProp G G' P)
    (c : M') :
    (ChartedSpace.LiftProp P fun _ : (⊤ : Opens (TopCat.of M)) => c) →
      ∃ s : (hG.sheaf M M').val.obj (op ⊤),
        (s : (⊤ : Opens (TopCat.of M)) → M') = fun _ => c := by
  sorry