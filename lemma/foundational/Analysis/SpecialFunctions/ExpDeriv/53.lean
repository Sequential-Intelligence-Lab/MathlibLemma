import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.exp_eq_exp_iff_eq_add_period (z w : ℂ) :
    Complex.exp z = Complex.exp w ↔ ∃ k : ℤ, z = w + (2 * Real.pi * Complex.I) * k := by
  have h_main_forward : Complex.exp z = Complex.exp w → ∃ k : ℤ, z = w + (2 * Real.pi * Complex.I) * k := by
    intro h
    have h₁ : Complex.exp (z - w) = 1 := by
      calc
        Complex.exp (z - w) = Complex.exp z / Complex.exp w := by
          rw [Complex.exp_sub]
          <;> field_simp
        _ = 1 := by
          rw [h]
          field_simp
    have h₂ : ∃ k : ℤ, z - w = (2 * Real.pi * Complex.I) * k := by
      rw [Complex.exp_eq_one_iff] at h₁
      obtain ⟨k, hk⟩ := h₁
      refine' ⟨k, _⟩
      linear_combination hk
    obtain ⟨k, hk⟩ := h₂
    refine' ⟨k, _⟩
    have h₃ : z = w + (2 * Real.pi * Complex.I) * k := by
      calc
        z = (z - w) + w := by ring
        _ = (2 * Real.pi * Complex.I) * k + w := by rw [hk]
        _ = w + (2 * Real.pi * Complex.I) * k := by ring
    exact h₃
  
  have h_main_backward : (∃ k : ℤ, z = w + (2 * Real.pi * Complex.I) * k) → Complex.exp z = Complex.exp w := by
    intro h
    obtain ⟨k, hk⟩ := h
    calc
      Complex.exp z = Complex.exp (w + (2 * Real.pi * Complex.I) * k) := by rw [hk]
      _ = Complex.exp w * Complex.exp ((2 * Real.pi * Complex.I) * k) := by
        rw [Complex.exp_add]
      _ = Complex.exp w * 1 := by
        have h₁ : Complex.exp ((2 * Real.pi * Complex.I) * k) = 1 := by
          have h₂ : Complex.exp ((2 * Real.pi * Complex.I) * k) = (Complex.exp (2 * Real.pi * Complex.I)) ^ k := by
            rw [← Complex.exp_int_mul]
            <;> ring_nf
          rw [h₂]
          have h₃ : Complex.exp (2 * Real.pi * Complex.I) = 1 := by
            rw [Complex.exp_eq_one_iff]
            use 1
            <;> ring_nf
            <;> simp [Complex.ext_iff, Real.exp_zero]
            <;> field_simp [Real.pi_pos.le]
            <;> ring_nf
            <;> norm_num
            <;> linarith [Real.pi_pos]
          rw [h₃]
          simp
          <;>
          norm_cast
        rw [h₁]
        <;> ring_nf
      _ = Complex.exp w := by ring
  
  have h_final : Complex.exp z = Complex.exp w ↔ ∃ k : ℤ, z = w + (2 * Real.pi * Complex.I) * k := by
    constructor
    · intro h
      exact h_main_forward h
    · intro h
      exact h_main_backward h
  
  exact h_final