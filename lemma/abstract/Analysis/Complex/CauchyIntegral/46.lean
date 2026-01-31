import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.measurable_add_real_smul_I :
    Measurable fun p : ℝ × ℝ => (p.1 + p.2 * Complex.I) :=
by
  have h_main : Continuous (fun p : ℝ × ℝ => (p.1 + p.2 * Complex.I : ℂ)) := by
    -- Prove that the function is continuous by showing that its components are continuous
    have h₁ : Continuous fun p : ℝ × ℝ => (p.1 : ℂ) := by
      -- The first component is continuous because it is the projection
      continuity
    have h₂ : Continuous fun p : ℝ × ℝ => (p.2 : ℂ) := by
      -- The second component is continuous because it is the projection
      continuity
    have h₃ : Continuous fun p : ℝ × ℝ => (p.2 : ℂ) * Complex.I := by
      -- Multiplication by Complex.I is continuous
      apply Continuous.mul
      · exact h₂
      · exact continuous_const
    -- The sum of two continuous functions is continuous
    have h₄ : Continuous fun p : ℝ × ℝ => (p.1 : ℂ) + (p.2 : ℂ) * Complex.I := by
      apply Continuous.add h₁ h₃
    -- The function in question is exactly the sum above
    convert h₄ using 1
    <;> simp [Complex.ext_iff, mul_comm]
    <;> ring_nf
    <;> simp [Complex.ext_iff, mul_comm]
    <;> norm_num
    <;> simp_all [Complex.ext_iff, mul_comm]
    <;> ring_nf at *
    <;> simp_all [Complex.ext_iff, mul_comm]
    <;> norm_num at *
    <;> linarith
  
  have h_final : Measurable (fun p : ℝ × ℝ => (p.1 + p.2 * Complex.I : ℂ)) := by
    -- Use the fact that continuous functions are measurable
    exact h_main.measurable
  
  exact h_final