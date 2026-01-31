import Mathlib

lemma Real.log_eq_log_iff {x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    Real.log x = Real.log y ↔ x = y := by
  constructor
  · intro h
    -- Apply exp to both sides of the equality of logs
    have h1 : Real.exp (Real.log x) = Real.exp (Real.log y) :=
      congrArg Real.exp h
    -- Simplify using exp_log, valid under positivity assumptions
    have hx' : Real.exp (Real.log x) = x := Real.exp_log hx
    have hy' : Real.exp (Real.log y) = y := Real.exp_log hy
    simpa [hx', hy'] using h1
  · intro h
    simpa [h]