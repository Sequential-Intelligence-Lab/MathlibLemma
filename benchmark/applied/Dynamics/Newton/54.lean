import Mathlib

open Polynomial

/-- A Newton step for a polynomial with real coefficients is a contraction mapping on a
sufficiently small ball around a simple real root. -/
lemma Polynomial.newtonMap_real_contraction_near_simple_root
    (P : ℝ[X]) (r : ℝ)
    (hr : eval r P = 0)
    (hderiv : eval r (Polynomial.derivative P) ≠ 0) :
    ∃ ε > 0, ∀ {x}, |x - r| < ε →
      |P.newtonMap x - r| ≤ (1 / 2) * |x - r| := by
  sorry