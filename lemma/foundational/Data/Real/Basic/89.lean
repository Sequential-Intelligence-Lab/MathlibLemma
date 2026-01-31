import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma IsPowMul.map_one_eq_one_of_le {R : Type*} [Monoid R]
    {f : R → ℝ} (hf : IsPowMul f) (h1 : 1 ≤ f 1) :
    f 1 = 1 := by
  have h2 : f (1 : R) = (f (1 : R)) ^ 2 := by
    have h2₁ : f ((1 : R) ^ 2) = (f (1 : R)) ^ 2 := by
      have h2₂ : 1 ≤ (2 : ℕ) := by norm_num
      have h2₃ : f ((1 : R) ^ 2) = (f (1 : R)) ^ 2 := hf (1 : R) (by norm_num)
      exact h2₃
    have h2₄ : (1 : R) ^ 2 = (1 : R) := by
      simp [pow_two]
    have h2₅ : f ((1 : R) ^ 2) = f (1 : R) := by
      rw [h2₄]
    have h2₆ : f (1 : R) = (f (1 : R)) ^ 2 := by
      linarith
    exact h2₆
  
  have h3 : f (1 : R) = 0 ∨ f (1 : R) = 1 := by
    have h3₁ : (f (1 : R)) ^ 2 - f (1 : R) = 0 := by linarith
    have h3₂ : f (1 : R) * (f (1 : R) - 1) = 0 := by
      ring_nf at h3₁ ⊢
      <;> linarith
    have h3₃ : f (1 : R) = 0 ∨ f (1 : R) - 1 = 0 := by
      apply eq_zero_or_eq_zero_of_mul_eq_zero h3₂
    cases h3₃ with
    | inl h3₃ =>
      exact Or.inl h3₃
    | inr h3₃ =>
      have h3₄ : f (1 : R) = 1 := by linarith
      exact Or.inr h3₄
  
  have h4 : f (1 : R) = 1 := by
    cases h3 with
    | inl h3 =>
      -- Case: f(1) = 0
      have h4 : (1 : ℝ) ≤ f (1 : R) := h1
      have h5 : f (1 : R) = 0 := h3
      linarith
    | inr h3 =>
      -- Case: f(1) = 1
      exact h3
  
  simpa using h4