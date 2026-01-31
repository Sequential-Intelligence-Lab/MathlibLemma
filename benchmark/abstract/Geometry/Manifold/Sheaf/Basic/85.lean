import Mathlib

universe u v w

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type v} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_comp_equiv_apply
    (hG : LocalInvariantProp G G' P)
    {U : (Opens M)ᵒᵖ}
    (e : U.unop ≃ U.unop)
    (f : (hG.sheaf M M').val.obj U) :
    (⟨fun x => f.1 (e.symm x), by
        sorry⟩ :
      (hG.sheaf M M').val.obj U) = f := by
  sorry