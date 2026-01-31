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
  -- The polynomial-specific hypotheses are not needed for this argument.
  refine Set.disjoint_left.mpr ?_
  intro x hx₁ hx₂
  -- Consider the orbit of `x` under Newton's method as a sequence.
  let f : ℕ → ℂ := fun n ↦ (Polynomial.newtonMap P)^[n] x
  have hx₁' : Tendsto f atTop (pure r₁) := hx₁
  have hx₂' : Tendsto f atTop (pure r₂) := hx₂
  -- `pure r ≤ nhds r`, so convergence to `pure r` implies convergence to `nhds r`.
  have h1 : Tendsto f atTop (nhds r₁) :=
    hx₁'.mono_right (pure_le_nhds r₁)
  have h2 : Tendsto f atTop (nhds r₂) :=
    hx₂'.mono_right (pure_le_nhds r₂)
  -- Uniqueness of limits in a Hausdorff space (here ℂ) gives `r₁ = r₂`.
  have h_eq : r₁ = r₂ := tendsto_nhds_unique h1 h2
  exact hne h_eq