import Mathlib

universe u v w

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type v} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type w) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type _) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma section_spec_eqOn
    (hG : LocalInvariantProp G G' P)
    {U : (Opens M)ᵒᵖ}
    (f g : (hG.sheaf M M').val.obj U)
    (h : ∀ x : (unop U : Opens M), f x = g x) :
    f = g := by
  sorry