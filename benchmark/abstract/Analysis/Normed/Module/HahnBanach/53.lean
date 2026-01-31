import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

-- 54. Dual vector achieving distance between two points in Hilbert-like case
lemma exists_dual_vector_realizing_dist_points
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {x y : E} (hxy : x ≠ y) :
    ∃ f : StrongDual ℝ E, ‖f‖ = 1 ∧ ‖f x - f y‖ = ‖x - y‖ := by
  sorry