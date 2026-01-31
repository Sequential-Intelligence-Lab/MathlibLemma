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

-- 66
lemma liftProp_of_forall_liftPropAt_nhds
    (hG : LocalInvariantProp G G' P)
    {U : Opens (TopCat.of M)} (f : U → M')
    (h : ∀ x, ∀ᶠ y in 𝓝 x, ChartedSpace.LiftPropAt P f y) :
    ChartedSpace.LiftProp P f := by
  -- We must show the property holds at every point.
  intro x
  -- From the hypothesis, the set of points where `LiftPropAt` holds is a neighborhood of `x`.
  have hx_eventually : ∀ᶠ y in 𝓝 x, ChartedSpace.LiftPropAt P f y := h x
  have hx_sets : {y | ChartedSpace.LiftPropAt P f y} ∈ 𝓝 x := hx_eventually
  -- Use the neighborhood characterization to get a smaller set containing `x`
  rcases (mem_nhds_iff.1 hx_sets) with ⟨t, ht_subset, _ht_open, hx_mem⟩
  -- Conclude that `x` itself satisfies `LiftPropAt`.
  have hx_mem' : x ∈ {y | ChartedSpace.LiftPropAt P f y} :=
    ht_subset hx_mem
  simpa using hx_mem'