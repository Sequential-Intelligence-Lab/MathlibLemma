import Mathlib

universe u v w

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type v} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type w) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type w) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

def sheaf_section_equalizer
    (hG : LocalInvariantProp G G' P)
    (U : (Opens M)ᵒᵖ)
    (φ ψ : M' → M') :
    { f : (hG.sheaf M M').val.obj U //
        ∀ x : ((unop U : Opens M) : Set M), φ (f x) = ψ (f x) } ≃
      { f : ((unop U : Opens M) : Set M) → M' //
        True ∧ ∀ x, φ (f x) = ψ (f x) } := by
  sorry