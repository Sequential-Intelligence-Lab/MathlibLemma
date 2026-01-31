import Mathlib

universe u

variable {H : Type u} [TopologicalSpace H]
variable {H' : Type u} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

def sheaf_eval_at_point
    (hG : LocalInvariantProp G G' P)
    (x : M)
    (U : (Opens (TopCat.of M))ᵒᵖ) (hx : x ∈ unop U)
    (f : (hG.sheaf M M').val.obj U) :
    M' := by
  classical
  sorry