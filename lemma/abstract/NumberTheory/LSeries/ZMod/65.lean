import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma isPreconnected_halfPlane_re_ge (σ : ℝ) :
    IsPreconnected {z : ℂ | σ ≤ z.re} := by
  -- First show the half-plane is convex.
  have hconv : Convex ℝ {z : ℂ | σ ≤ z.re} := by
    intro z hz w hw a b ha hb hsum
    -- Goal: `a • z + b • w ∈ {z : ℂ | σ ≤ z.re}`
    -- i.e. `σ ≤ (a • z + b • w).re`
    change σ ≤ (a • z + b • w).re

    -- From membership in the half-plane:
    have hz' : σ ≤ z.re := hz
    have hw' : σ ≤ w.re := hw

    -- Multiply inequalities by nonnegative scalars a, b.
    have hz'' : a * σ ≤ a * z.re :=
      mul_le_mul_of_nonneg_left hz' ha
    have hw'' : b * σ ≤ b * w.re :=
      mul_le_mul_of_nonneg_left hw' hb

    -- Add the inequalities and rewrite with distributivity.
    have h := add_le_add hz'' hw''
    -- a * σ + b * σ = (a + b) * σ
    have hσab : (a + b) * σ ≤ a * z.re + b * w.re := by
      simpa [add_mul] using h

    -- Use a + b = 1 to simplify the left-hand side.
    have hσle : σ ≤ a * z.re + b * w.re := by
      simpa [hsum] using hσab

    -- Real part is ℝ-linear: re (a•z + b•w) = a*z.re + b*w.re
    have h_re :
        (a • z + b • w).re = a * z.re + b * w.re := by
      simp [Complex.add_re, Complex.smul_re, mul_comm, mul_left_comm, mul_assoc]

    -- Conclude membership in the half-plane.
    simpa [h_re] using hσle

  -- A convex set in a real vector space is preconnected.
  simpa using hconv.isPreconnected