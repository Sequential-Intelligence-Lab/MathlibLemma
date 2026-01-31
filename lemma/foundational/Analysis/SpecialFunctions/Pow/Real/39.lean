import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_natCast_tendsto_atTop_of_gt_one {x : ℝ} (hx : 1 < x) :
    Filter.Tendsto (fun n : ℕ => x ^ (n : ℝ)) Filter.atTop Filter.atTop := by
  have h_main : Filter.Tendsto (fun n : ℕ => (x : ℝ) ^ n) Filter.atTop Filter.atTop := by
    -- Use the known result about the tendsto of x^n for x > 1
    have h : 1 < (x : ℝ) := by exact_mod_cast hx
    exact tendsto_pow_atTop_atTop_of_one_lt h
  
  have h_eq : (fun n : ℕ => x ^ (n : ℝ)) = (fun n : ℕ => (x : ℝ) ^ n) := by
    funext n
    -- Prove that x^(n : ℝ) = x^n for each n : ℕ using induction
    have h₁ : x ^ (n : ℝ) = (x : ℝ) ^ n := by
      -- Use induction on n to prove the equality
      induction n with
      | zero =>
        -- Base case: n = 0
        norm_num [Real.rpow_zero]
      | succ n ih =>
        -- Inductive step: assume the statement holds for n, prove for n + 1
        have h₂ : ((n.succ : ℕ) : ℝ) = (n : ℝ) + 1 := by
          norm_cast
          <;> simp [Nat.cast_add, Nat.cast_one]
          <;> ring
        rw [h₂]
        -- Use the property of real powers: x^(a + b) = x^a * x^b
        have h₃ : x ^ ((n : ℝ) + 1 : ℝ) = x ^ (n : ℝ) * x := by
          rw [Real.rpow_add] <;>
          (try simp_all [Real.rpow_one]) <;>
          (try norm_num) <;>
          (try linarith) <;>
          (try positivity)
          <;>
          simp_all [Real.rpow_one]
          <;>
          ring_nf
          <;>
          field_simp
          <;>
          linarith
        rw [h₃]
        -- Use the induction hypothesis and simplify
        simp_all [pow_succ]
        <;>
        ring_nf
        <;>
        field_simp
        <;>
        linarith
    -- Simplify the final expression
    simp_all
    <;>
    norm_cast
    <;>
    simp_all [pow_succ]
    <;>
    ring_nf
    <;>
    field_simp
    <;>
    linarith
  
  have h_final : Filter.Tendsto (fun n : ℕ => x ^ (n : ℝ)) Filter.atTop Filter.atTop := by
    -- Since the two functions are equal, their limits are the same
    rw [h_eq]
    exact h_main
  
  exact h_final