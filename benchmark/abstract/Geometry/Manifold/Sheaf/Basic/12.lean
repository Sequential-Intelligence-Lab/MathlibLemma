import Mathlib

universe u w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_forget_toType_injective_on_sections
    (hG : LocalInvariantProp G G' P) (U : (Opens M)ᵒᵖ) :
    Function.Injective
      (fun f : (hG.sheaf (H := H) (H' := H') M M').val.obj U =>
        (f : (unop U).1 → M')) := by
  sorry