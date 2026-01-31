import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 21. Dual vector extending on a line with prescribed bound (real case). -/
lemma exists_dual_vector_on_span_le_norm_real
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (x : E) (h : x ≠ 0) (c : ℝ) :
    ∃ g : E →L[ℝ] ℝ, g x = c ∧ ‖g‖ = ‖c‖ / ‖x‖ := by
  classical
  -- Get a norm-one functional φ with φ x = ‖x‖
  obtain ⟨φ, hφnorm, hφx⟩ := exists_dual_vector (𝕜 := ℝ) x h
  -- ‖x‖ is nonzero since x ≠ 0
  have hx_norm_ne : ‖x‖ ≠ 0 := (norm_ne_zero_iff.mpr h)
  -- Define the scaling factor and the resulting functional
  let a : ℝ := c / ‖x‖
  let g : E →L[ℝ] ℝ := a • φ
  refine ⟨g, ?_, ?_⟩
  · -- Value at x: g x = c
    have : (a • φ) x = a * φ x := rfl
    -- Use φ x = ‖x‖ and cancel ‖x‖
    simp [g, a, this, hφx, div_eq_mul_inv, hx_norm_ne]
  · -- Norm of g: ‖g‖ = ‖c‖ / ‖x‖
    have hnorm : ‖a • φ‖ = ‖a‖ * ‖φ‖ := norm_smul a φ
    calc
      ‖g‖ = ‖a • φ‖ := rfl
      _ = ‖a‖ * ‖φ‖ := hnorm
      _ = ‖a‖ * 1 := by simpa [hφnorm]
      _ = ‖a‖ := by simp
      _ = ‖c / ‖x‖‖ := rfl
      _ = ‖c‖ / ‖‖x‖‖ := by simpa [a] using (norm_div c ‖x‖)
      _ = ‖c‖ / ‖x‖ := by simp

/-- 21. Dual vector extending on a line with prescribed bound (complex case). -/
lemma exists_dual_vector_on_span_le_norm_complex
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℂ E]
    (x : E) (h : x ≠ 0) (c : ℂ) :
    ∃ g : E →L[ℂ] ℂ, g x = c ∧ ‖g‖ = ‖c‖ / ‖x‖ := by
  classical
  -- Get a norm-one functional φ with φ x = ‖x‖ (as a complex number)
  obtain ⟨φ, hφnorm, hφx⟩ := exists_dual_vector (𝕜 := ℂ) x h
  -- ‖x‖ is nonzero since x ≠ 0
  have hx_norm_ne : ‖x‖ ≠ 0 := (norm_ne_zero_iff.mpr h)
  -- Hence its complex coercion is also nonzero
  have hx_norm_neC : (‖x‖ : ℂ) ≠ 0 := by
    exact_mod_cast hx_norm_ne
  -- Define the scaling factor and the resulting functional
  let a : ℂ := c / (‖x‖ : ℂ)
  let g : E →L[ℂ] ℂ := a • φ
  refine ⟨g, ?_, ?_⟩
  · -- Value at x: g x = c
    have : (a • φ) x = a * φ x := rfl
    -- Use φ x = ‖x‖ (as ℂ) and cancel (‖x‖ : ℂ)
    simp [g, a, this, hφx, div_eq_mul_inv, hx_norm_neC]
  · -- Norm of g: ‖g‖ = ‖c‖ / ‖x‖
    have hnorm : ‖a • φ‖ = ‖a‖ * ‖φ‖ := norm_smul a φ
    calc
      ‖g‖ = ‖a • φ‖ := rfl
      _ = ‖a‖ * ‖φ‖ := hnorm
      _ = ‖a‖ * 1 := by simpa [hφnorm]
      _ = ‖a‖ := by simp
      _ = ‖c / (‖x‖ : ℂ)‖ := rfl
      _ = ‖c‖ / ‖(‖x‖ : ℂ)‖ := by simpa [a] using (norm_div c (‖x‖ : ℂ))
      _ = ‖c‖ / ‖x‖ := by simp