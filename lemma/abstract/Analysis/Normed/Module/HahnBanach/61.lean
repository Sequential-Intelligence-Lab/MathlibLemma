import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exists_dual_vector_separating_cone
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (K : Set E) (hconv : Convex ℝ K) (hclosed : IsClosed K)
    {x : E} (hx : x ∉ K) :
    ∃ f : E →L[ℝ] ℝ, ∀ ⦃y : E⦄, y ∈ K → f y ≤ f x := by
  have h_main : ∃ (f : E →L[ℝ] ℝ), ∀ ⦃y : E⦄, y ∈ K → f y ≤ f x := by
    -- Use the zero functional as the separating functional
    use 0
    intro y hy
    -- Simplify the inequality using the fact that both sides are zero
    simp [LinearMap.zero_apply]
    <;>
    linarith
  
  exact h_main