import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.exp_periodic_im :
    Function.Periodic (fun z : ℂ => Complex.exp z) (2 * Real.pi * Complex.I) := by
  have h_main : ∀ (z : ℂ), Complex.exp (z + 2 * Real.pi * Complex.I) = Complex.exp z := by
    intro z
    have h₁ : Complex.exp (z + 2 * Real.pi * Complex.I) = Complex.exp z * Complex.exp (2 * Real.pi * Complex.I) := by
      rw [Complex.exp_add]
      <;> ring_nf
    rw [h₁]
    have h₂ : Complex.exp (2 * Real.pi * Complex.I) = 1 := by
      rw [Complex.exp_eq_one_iff]
      use 1
      <;> simp [Complex.ext_iff, Complex.I_mul_I]
      <;> ring_nf
      <;> norm_num
      <;> field_simp [Real.pi_pos.le]
      <;> ring_nf
      <;> norm_num
      <;> linarith [Real.pi_pos]
    rw [h₂]
    <;> simp [Complex.ext_iff, Complex.I_mul_I]
    <;> ring_nf
    <;> norm_num
  
  -- Use the main result to prove the periodicity
  refine' fun z => _
  have h := h_main z
  simpa [add_assoc] using h