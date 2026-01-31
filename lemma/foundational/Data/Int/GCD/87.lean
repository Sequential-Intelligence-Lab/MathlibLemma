import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.coprime_of_gcd_eq_one (a b : ℤ) (h : Int.gcd a b = 1) :
    IsCoprime a b := by
  have h₁ : a * a.gcdA b + b * a.gcdB b = 1 := by
    have h₂ : a * a.gcdA b + b * a.gcdB b = Int.gcd a b := by
      rw [Int.gcd_eq_gcd_ab a b]
    rw [h₂]
    <;> simp [h]
  -- Use the coefficients from Bézout's identity to show that a and b are coprime.
  refine' ⟨a.gcdA b, a.gcdB b, _⟩
  -- Verify that the coefficients satisfy the equation a * x + b * y = 1.
  linarith