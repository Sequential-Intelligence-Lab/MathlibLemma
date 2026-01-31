import Mathlib

open Filter

lemma Real.log_add_one_asymptotics :
    (fun x : ℝ => Real.log (x + 1) - Real.log x)
      =o[Filter.atTop] (fun _ : ℝ => (1 : ℝ)) := by
  sorry