import Mathlib

universe u

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid
open StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma localPredicate_mono_map
    (hG : LocalInvariantProp G G' P) {U V : Opens (TopCat.of M)}
    (i : U ⟶ V) (f : V → M') :
    (hG.localPredicate (M := M) (M' := M')).pred f →
    (hG.localPredicate (M := M) (M' := M')).pred
      (f ∘ Opens.inclusion (CategoryTheory.leOfHom i)) := by
  sorry