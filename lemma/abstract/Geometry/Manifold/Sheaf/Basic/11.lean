import Mathlib

universe u v w

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

lemma sheaf_section_spec_iff
    (hG : LocalInvariantProp G G' P)
    (U : (Opens (TopCat.of M))ᵒᵖ)
    (f : (hG.sheaf (M := M) (M' := M')).val.obj U) :
    StructureGroupoid.LocalInvariantProp.section_spec
      (M := M) (M' := M') hG U f = f.2 := by
  -- Unfold the structure of a section `f` of the sheaf.
  rcases f with ⟨s, hs⟩
  -- Now `section_spec` for this sheaf is definitionally the second component.
  -- We use `simp` with its definition.
  simp [StructureGroupoid.LocalInvariantProp.section_spec]