import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_comp_mul_self (f : ℝ → ℝ) :
    Real.sqrt ∘ (fun x => f x * f x) = fun x => |f x| := by
  have h_main : ∀ (y : ℝ), Real.sqrt (y * y) = |y| := by
    intro y
    have h₁ : Real.sqrt (y * y) = Real.sqrt (y ^ 2) := by
      ring_nf
    rw [h₁]
    rw [Real.sqrt_sq_eq_abs]
    <;>
    simp [abs_mul_abs_self]
    <;>
    ring_nf
  
  have h_final : Real.sqrt ∘ (fun x => f x * f x) = fun x => |f x| := by
    funext x
    have h₂ : Real.sqrt (f x * f x) = |f x| := h_main (f x)
    simp only [Function.comp_apply] at *
    rw [h₂]
    <;>
    simp_all
  
  exact h_final