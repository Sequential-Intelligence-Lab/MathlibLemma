import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.radial_symm_norm_rpow_mul_exp_neg_rpow
    {p q : ℝ} :
    (fun z : ℂ => ‖z‖ ^ q * Real.exp (-‖z‖ ^ p)) =
      fun z : ℂ => (fun r : ℝ => r ^ q * Real.exp (-(r ^ p))) ‖z‖ := by
  have h_main : (fun z : ℂ => ‖z‖ ^ q * Real.exp (-‖z‖ ^ p)) = (fun z : ℂ => (fun r : ℝ => r ^ q * Real.exp (-(r ^ p))) ‖z‖) := by
    funext z
    <;> simp [Real.rpow_def_of_pos]
    <;> congr 1 <;> ext r <;> simp [Real.rpow_def_of_pos]
    <;> ring_nf
    <;> simp_all [Complex.abs, Complex.normSq, Real.sqrt_eq_iff_sq_eq, sq, mul_comm]
    <;> norm_num
    <;> linarith
  
  rw [h_main]
  <;> simp_all