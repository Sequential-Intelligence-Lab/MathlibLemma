import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.summable_one_div_nat_rpow_from {p : ℝ} (hp : 1 < p) (k : ℕ) :
    Summable fun n : ℕ => 1 / (n + k : ℝ) ^ p := by
  have h_main : Summable (fun n : ℕ => (1 : ℝ) / (n : ℝ) ^ p) := by
    have h₁ : Summable (fun n : ℕ => (1 : ℝ) / (n : ℝ) ^ p) := by
      -- Use the known result about the summability of p-series for p > 1
      simpa [Nat.cast_add, Nat.cast_one] using
        Real.summable_nat_rpow_inv.mpr (by linarith)
    exact h₁
  
  have h_cast : ∀ (n : ℕ), (n + k : ℝ) = ((n + k : ℕ) : ℝ) := by
    intro n
    norm_cast
  
  have h_fun_eq : (fun n : ℕ => 1 / (n + k : ℝ) ^ p) = (fun n : ℕ => 1 / ((n + k : ℕ) : ℝ) ^ p) := by
    funext n
    have h₁ : (n + k : ℝ) = ((n + k : ℕ) : ℝ) := h_cast n
    rw [h₁]
  
  have h_sum : Summable (fun n : ℕ => 1 / ((n + k : ℕ) : ℝ) ^ p) := by
    have h₁ : Summable (fun n : ℕ => (1 : ℝ) / (n : ℝ) ^ p) := h_main
    -- Use the fact that if a series is summable, then any shift of it is also summable.
    have h₂ : Summable (fun n : ℕ => (1 : ℝ) / ((n + k : ℕ) : ℝ) ^ p) := by
      -- Use the lemma `summable_nat_add_iff` to relate the shifted series to the original series.
      have h₃ : Summable (fun n : ℕ => (1 : ℝ) / ((n + k : ℕ) : ℝ) ^ p) :=
        (summable_nat_add_iff k).mpr h₁
      exact h₃
    -- Simplify the goal using the previously established summability of the shifted series.
    convert h₂ using 1
    <;> ext n <;> field_simp [Nat.cast_add_one_ne_zero]
    <;> ring_nf
    <;> simp_all [pow_add, pow_one, mul_assoc]
    <;> field_simp [Nat.cast_add_one_ne_zero]
    <;> ring_nf
  
  -- Simplify the goal using the previously established summability of the shifted series.
  have h_final : Summable (fun n : ℕ => 1 / (n + k : ℝ) ^ p) := by
    have h₁ : (fun n : ℕ => 1 / (n + k : ℝ) ^ p) = (fun n : ℕ => 1 / ((n + k : ℕ) : ℝ) ^ p) := h_fun_eq
    rw [h₁]
    exact h_sum
  
  exact h_final