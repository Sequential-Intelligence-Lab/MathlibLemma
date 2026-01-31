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

lemma sheaf_section_eq_iff_funext
    (hG : LocalInvariantProp G G' P)
    (U : (Opens M)ᵒᵖ)
    (f g : (hG.sheaf (M := M) (M' := M')).val.obj U) :
    f = g ↔ (⇑f) = (⇑g) := by
  sorry