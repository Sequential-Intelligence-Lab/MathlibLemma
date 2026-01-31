import Mathlib

/-- A real-analytic dependence of `Γ((q+1)/p)` on `q` for `q > -1`. -/
lemma Real.realAnalytic_Gamma_fraction_in_q
    (p : ℝ) (hp : 0 < p) :
    AnalyticOn ℝ (fun q : ℝ => Real.Gamma ((q + 1) / p)) (Set.Ioi (-1)) := by
  sorry