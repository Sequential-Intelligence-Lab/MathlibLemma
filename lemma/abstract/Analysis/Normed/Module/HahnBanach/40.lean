import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 41. Existence of dual vector with prescribed norm on two opposite points -/
theorem exists_dual_vector_on_segment
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (x : E) (h : x ≠ 0) :
    ∃ g : StrongDual ℝ E, ‖g‖ = 1 ∧ g x = ‖x‖ ∧ g (-x) = -‖x‖ := by
  have h1 : ∃ f : E →L[ℝ] ℝ, ‖f‖ = 1 ∧ f x = ‖x‖ := by
    apply exists_dual_vector
    all_goals try { assumption }
  rcases h1 with ⟨f, hf1, hf2⟩
  refine ⟨f, ?_, ?_, ?_⟩
  · exact hf1
  · exact hf2
  · have h3 : f (-x) = - (f x) := by
      simp [ContinuousLinearMap.map_neg]
    rw [h3, hf2]
    all_goals norm_num