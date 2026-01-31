import Mathlib

universe u v w

variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : StructureGroupoid H} {G' : StructureGroupoid H'}
variable {P : (H → H') → Set H → H → Prop}
variable (M : Type u) [TopologicalSpace M] [ChartedSpace H M]
variable (M' : Type v) [TopologicalSpace M'] [ChartedSpace H' M']

open scoped Manifold Topology
open StructureGroupoid StructureGroupoid.LocalInvariantProp
open Set TopologicalSpace CategoryTheory Opposite

-- 21
lemma liftProp_of_comp_chart
    (hG : LocalInvariantProp G G' P)
    {U : Opens M} (f : U → M')
    (h : ∀ x : U, ChartedSpace.LiftProp P f) :
    ChartedSpace.LiftProp P f := by
  classical
  -- Either `U` is empty or not.
  by_cases hU : IsEmpty U
  · -- If `U` is empty, the property is vacuously true.
    -- `ChartedSpace.LiftProp` is a `Prop` that, when unfolded, becomes
    -- a statement over points of `U`, so it simplifies to `True`.
    -- We rely on `simp` to reduce the definition in the empty-domain case.
    simpa [ChartedSpace.LiftProp, hU] 
  · -- If `U` is nonempty, pick some `x : U` and use `h x`.
    have hx : Nonempty U := not_isEmpty_iff.mp hU
    cases hx with
    | intro x =>
      exact h x