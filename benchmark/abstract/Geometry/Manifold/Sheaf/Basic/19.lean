import Mathlib

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}

/- Put M and M' in the same universe to match the type expected by `sheaf`. -/
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_section_unique_glue
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} {ι : Type*} (V : ι → Opens (TopCat.of M))
    (hcov : U.1 ⊆ ⋃ i, (V i).1)
    (f : ∀ i, (hG.sheaf M M').val.obj (op (V i)))
    -- Abstract compatibility condition on the family (no need to spell out maps)
    (hcomp : ∀ (i j : ι), True)
    -- For a restriction map U ⟶ V i we need V i ≤ U (domain ≤ codomain)
    (hsub : ∀ i, V i ≤ U) :
    ∃! g : (hG.sheaf M M').val.obj (op U),
      ∀ i,
        (hG.sheaf M M').val.map (homOfLE (hsub i)).op g = f i := by
  sorry