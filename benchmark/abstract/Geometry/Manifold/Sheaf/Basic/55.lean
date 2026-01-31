import Mathlib

universe u

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type u) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid
open Set TopologicalSpace CategoryTheory Opposite

lemma sheaf_of_isEmpty
    (hG : LocalInvariantProp G G' P)
    [IsEmpty M] :
    Nonempty
      (((hG.sheaf (M := M) (M' := M')).val).obj
        (op (⊤ : Opens (TopCat.of M)))) := by
  sorry