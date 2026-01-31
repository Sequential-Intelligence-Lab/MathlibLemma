import Mathlib

open scoped Polynomial
open Filter

/-- For a complex polynomial, the basins of attraction of different simple roots for the Newton
map are disjoint. -/
lemma Polynomial.newtonMap_basins_disjoint
    (P : Polynomial ℂ) {r₁ r₂ : ℂ}
    (hr₁ : aeval r₁ P = 0) (hr₂ : aeval r₂ P = 0)
    (hderiv₁ : aeval r₁ (Polynomial.derivative P) ≠ 0)
    (hderiv₂ : aeval r₂ (Polynomial.derivative P) ≠ 0)
    (hne : r₁ ≠ r₂) :
    Disjoint
      {x | Tendsto (fun n ↦ (Polynomial.newtonMap P)^[n] x) atTop (pure r₁)}
      {x | Tendsto (fun n ↦ (Polynomial.newtonMap P)^[n] x) atTop (pure r₂)} := by
  sorry