import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.dvd_of_gcd_eq_one_right {a b c : ℤ} (hab : Int.gcd a b = 1)
    (h : b ∣ a * c) : b ∣ c := by
  have h_bezout : a * Int.gcdA a b + b * Int.gcdB a b = 1 := by
    have h₁ : a * Int.gcdA a b + b * Int.gcdB a b = Int.gcd a b := by
      rw [Int.gcd_eq_gcd_ab a b]
    rw [h₁]
    <;> simp [hab]
    <;> norm_num
  
  have h_main : b ∣ c := by
    have h₁ : b ∣ a * c := h
    have h₂ : a * Int.gcdA a b + b * Int.gcdB a b = 1 := h_bezout
    -- Multiply the Bézout identity by c
    have h₃ : a * Int.gcdA a b * c + b * Int.gcdB a b * c = c := by
      calc
        a * Int.gcdA a b * c + b * Int.gcdB a b * c = (a * Int.gcdA a b + b * Int.gcdB a b) * c := by ring
        _ = 1 * c := by rw [h₂]
        _ = c := by ring
    -- Since b divides a * c, we can write a * c = b * k for some integer k
    obtain ⟨k, hk⟩ := h₁
    -- Substitute a * c = b * k into the equation
    have h₄ : b * (Int.gcdA a b * k + Int.gcdB a b * c) = c := by
      calc
        b * (Int.gcdA a b * k + Int.gcdB a b * c) = b * (Int.gcdA a b * k) + b * (Int.gcdB a b * c) := by ring
        _ = Int.gcdA a b * (b * k) + Int.gcdB a b * (b * c) := by ring
        _ = Int.gcdA a b * (a * c) + Int.gcdB a b * (b * c) := by rw [hk]
        _ = a * Int.gcdA a b * c + b * Int.gcdB a b * c := by ring
        _ = c := by rw [h₃]
    -- Therefore, b divides c
    have h₅ : b ∣ c := by
      use (Int.gcdA a b * k + Int.gcdB a b * c)
      linarith
    exact h₅
  
  exact h_main