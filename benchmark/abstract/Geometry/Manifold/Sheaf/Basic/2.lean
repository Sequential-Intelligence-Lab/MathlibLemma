import Mathlib

universe uM uH uH'

variable {H : Type uH} [TopologicalSpace H]
variable {H' : Type uH'} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}

variable (M : Type uM) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type uM) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma localPredicate_res_iff
    (hG : LocalInvariantProp G G' P) {U V : Opens (TopCat.of M)}
    (i : U ⟶ V) (f : V → M') :
    (StructureGroupoid.LocalInvariantProp.localPredicate
        (M := M) (M' := M') hG).pred
        (f ∘ Opens.inclusion (CategoryTheory.leOfHom i))
      ↔
      ChartedSpace.LiftProp P (f ∘ Opens.inclusion (CategoryTheory.leOfHom i)) := by
  sorry