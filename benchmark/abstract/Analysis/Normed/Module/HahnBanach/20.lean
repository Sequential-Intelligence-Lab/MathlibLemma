import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 21. Dual vector extending on a line with prescribed bound (real case). -/
lemma exists_dual_vector_on_span_le_norm_real
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (x : E) (h : x ≠ 0) (c : ℝ) :
    ∃ g : E →L[ℝ] ℝ, g x = c ∧ ‖g‖ = ‖c‖ / ‖x‖ := by
  sorry

/-- 21. Dual vector extending on a line with prescribed bound (complex case). -/
lemma exists_dual_vector_on_span_le_norm_complex
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℂ E]
    (x : E) (h : x ≠ 0) (c : ℂ) :
    ∃ g : E →L[ℂ] ℂ, g x = c ∧ ‖g‖ = ‖c‖ / ‖x‖ := by
  sorry