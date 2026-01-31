import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_const_add_id (a b c : ℝ) :
    ∫ x in a..b, (x + c) = (b^2 - a^2) / 2 + c * (b - a) := by
  have h1 : (∫ x in a..b, (x + c)) = (∫ x in a..b, (x : ℝ)) + (∫ x in a..b, (c : ℝ)) := by
    -- Use the linearity of the integral to split the integral of (x + c) into the sum of integrals of x and c.
    rw [intervalIntegral.integral_add] <;>
    (try continuity) <;>
    (try apply Continuous.intervalIntegrable) <;>
    (try continuity) <;>
    (try apply Continuous.intervalIntegrable) <;>
    (try continuity)
    <;>
    simp_all [continuous_const, continuous_id]
    <;>
    norm_num
    <;>
    linarith
  
  have h2 : (∫ x in a..b, (x : ℝ)) = (b^2 - a^2) / 2 := by
    -- Compute the integral of x from a to b using the fundamental theorem of calculus.
    have h₂ : (∫ x in a..b, (x : ℝ)) = (b^2 - a^2) / 2 := by
      -- Use the known result for the integral of x.
      simp [integral_id]
      <;> ring_nf
      <;> field_simp
      <;> ring_nf
      <;> linarith
    -- The result follows directly from the known integral of x.
    rw [h₂]
  
  have h3 : (∫ x in a..b, (c : ℝ)) = c * (b - a) := by
    -- Use the property of integrals for constant functions
    simp [intervalIntegral.integral_const, mul_comm]
    <;> ring
    <;> field_simp
    <;> ring
  
  have h4 : (∫ x in a..b, (x + c)) = (b^2 - a^2) / 2 + c * (b - a) := by
    rw [h1]
    rw [h2]
    rw [h3]
    <;> ring
    <;> field_simp
    <;> ring
  
  rw [h4]
  <;>
  norm_num
  <;>
  linarith