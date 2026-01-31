import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma tendsto_uniform_gauge_to_uniform
    {E : Type*} [AddCommGroup E] [Module ℝ E] [TopologicalSpace E] [LocallyConvexSpace ℝ E]
    {I : Type*} [TopologicalSpace I] [CompactSpace I]
    {α : Type*} {l : Filter α} (u : α → C(I, E)) (f : C(I, E))
    (h :
      ∀ (U : Set E),
        U ∈ (nhds (0 : E)) →
        Convex ℝ U →
        (∀ᶠ n in l, ∀ x : I, gauge U (u n x - f x) < 1)) :
    Filter.Tendsto u l (nhds f) := by sorry