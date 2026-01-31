import Mathlib

theorem Complex.analyticOn_exp_mul {f : ℂ → ℂ} {s : Set ℂ}
    (hf : AnalyticOn ℂ f s) :
    AnalyticOn ℂ (fun z => Complex.exp (f z) * f z) s := by
  sorry
