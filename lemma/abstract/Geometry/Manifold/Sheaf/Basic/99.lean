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

lemma sheaf_section_eq_iff
    (hG : LocalInvariantProp G G' P)
    (U : (Opens (TopCat.of M))ᵒᵖ)
    (f g : (hG.sheaf (M := M) (M' := M')).1.obj U) :
    f = g ↔ ∀ x, f x = g x := by
  constructor
  · intro h x
    simpa [h]
  · intro h
    -- Sections are implemented as a subtype of functions; use `Subtype.ext`.
    apply Subtype.ext
    -- Now the goal is equality of the underlying functions; use `funext`.
    funext x
    exact h x