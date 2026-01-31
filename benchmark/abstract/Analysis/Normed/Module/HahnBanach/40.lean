import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 41. Existence of dual vector with prescribed norm on two opposite points -/
lemma exists_dual_vector_on_segment
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (x : E) (h : x ≠ 0) :
    ∃ g : StrongDual ℝ E, ‖g‖ = 1 ∧ g x = ‖x‖ ∧ g (-x) = -‖x‖ := by
  sorry