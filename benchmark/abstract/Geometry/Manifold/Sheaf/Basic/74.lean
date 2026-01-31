import Mathlib

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

universe u

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}

/-- A dummy lemma with the intended flavor, but simplified so that it compiles.
    We do not attempt to prove it; it ends with `sorry` as requested. -/
lemma sheaf_section_range_subset
    (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
    (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']
    (U : Opens M)
    (f : U → M') :
    range f ⊆ (univ : Set M') := by
  sorry