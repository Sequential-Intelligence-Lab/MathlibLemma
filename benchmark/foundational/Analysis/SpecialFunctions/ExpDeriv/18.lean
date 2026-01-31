import Mathlib

theorem Complex.analyticOn_iterate_exp (n : ℕ) :
    AnalyticOn ℂ (fun z => (fun w => Complex.exp w)^[n] z) univ := by
  sorry
