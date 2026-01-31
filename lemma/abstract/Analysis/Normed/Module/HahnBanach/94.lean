import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 95. StrongDual of `ℝ` is `ℝ`. -/
def StrongDual.real_equiv_real :
    StrongDual ℝ ℝ ≃ₗᵢ[ℝ] ℝ := by
  sorry

theorem algebra_138788 : ∀ (x : ℝ), ∃ (y : ℝ), x ≤ y ∧ y ≤ x + 1 := by
  intro x
  refine ⟨x, ?_, ?_⟩
  · exact le_rfl
  · linarith