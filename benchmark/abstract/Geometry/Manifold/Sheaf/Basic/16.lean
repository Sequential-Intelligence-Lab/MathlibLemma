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

-- Help typeclass inference: expose the standard `ChartedSpace` instance
-- on the specific subtype `{x : M // x ∈ ⋃ i, (U i : Set M)}`.
-- We **declare** it but leave the proof as `sorry` as requested.
instance instChartedSpaceSubtypeUnion
    (M : Type*) [TopologicalSpace M] [ChartedSpace H M]
    {ι : Type*} (U : ι → Opens M) :
    ChartedSpace H {x : M // x ∈ ⋃ i, (U i : Set M)} :=
by
  -- no need to prove, per instructions
  sorry

lemma localPredicate_glue_of_compatible
    (hG : LocalInvariantProp G G' P)
    {ι : Type*} {U : ι → Opens M}
    (f : ∀ i, (U i → M'))
    (hf : ∀ i, ChartedSpace.LiftProp P (f i))
    (hcomp :
      ∀ i j x
        (hx :
          x ∈ ((U i : Opens M) : Set M) ∩
              ((U j : Opens M) : Set M)),
        f i ⟨x, hx.1⟩ = f j ⟨x, hx.2⟩) :
    ∃ g : {x : M // x ∈ ⋃ i, (U i : Set M)} → M',
      ChartedSpace.LiftProp P g := by
  sorry