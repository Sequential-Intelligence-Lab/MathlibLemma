import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Real.rpow_lt_rpow_of_pos {x y z : ℝ}
    (hx : 0 < x) (hxy : x < y) (hz : 0 < z) :
    x ^ z < y ^ z := by
  have h1 : x > 0 := hx
  have h2 : y > 0 := by linarith
  have h3 : x < y := hxy
  have h4 : z > 0 := hz
  have h5 : Real.log x < Real.log y := by
    apply Real.log_lt_log
    all_goals linarith
  have h6 : z * Real.log x < z * Real.log y := by
    apply mul_lt_mul_of_pos_left
    linarith
    all_goals linarith
  have h8 : x ^ z = Real.exp (z * Real.log x) := by
    rw [Real.rpow_def_of_pos h1]
    field_simp
    all_goals linarith
  have h9 : y ^ z = Real.exp (z * Real.log y) := by
    rw [Real.rpow_def_of_pos (show y > 0 by linarith)]
    field_simp
    all_goals linarith
  have h10 : Real.exp (z * Real.log x) < Real.exp (z * Real.log y) := by
    apply Real.exp_strictMono
    linarith
  rw [h8, h9]
  linarith