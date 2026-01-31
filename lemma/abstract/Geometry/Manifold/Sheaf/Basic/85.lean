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

/-
  Corrected version: we assume `e` is the identity equivalence on `U.unop`.
  Under this hypothesis, composing with `e.symm` does not change the section.
-/
lemma sheaf_section_comp_equiv_apply
    (hG : LocalInvariantProp G G' P)
    {U : (Opens M)ᵒᵖ}
    (e : U.unop ≃ U.unop)
    (he : e = Equiv.refl (U.unop))
    (f : (hG.sheaf M M').val.obj U) :
    (⟨fun x => f.1 (e.symm x), by
        -- The required property for the new section is the same as for `f`,
        -- since under `he` the function is definitionally equal to `f.1`.
        simpa [he] using f.property
      ⟩ :
      (hG.sheaf M M').val.obj U) = f := by
  -- To prove equality of elements of a subtype of sections, it suffices to
  -- show the underlying functions are equal.
  ext x
  -- Rewrite `e` to `Equiv.refl _` and simplify.
  simpa [he]