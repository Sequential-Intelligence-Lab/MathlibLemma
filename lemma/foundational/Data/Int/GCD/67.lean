import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.gcdB_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    y * Int.gcdB x y ≡ 1 [ZMOD x] := by
  have h_bezout : x * Int.gcdA x y + y * Int.gcdB x y = 1 := by
    have h₁ : x * Int.gcdA x y + y * Int.gcdB x y = Int.gcd x y := by
      rw [Int.gcd_eq_gcd_ab x y]
    rw [h₁]
    <;> simp [h]
    <;> ring
  
  have h_div : x ∣ y * Int.gcdB x y - 1 := by
    have h₁ : y * Int.gcdB x y - 1 = - (x * Int.gcdA x y) := by
      have h₂ : x * Int.gcdA x y + y * Int.gcdB x y = 1 := h_bezout
      linarith
    rw [h₁]
    -- We need to show that x divides - (x * Int.gcdA x y)
    -- This is equivalent to showing that x divides x * Int.gcdA x y, which is trivially true.
    use -Int.gcdA x y
    <;> ring
    <;> simp [mul_assoc]
  
  have h_cong : y * Int.gcdB x y ≡ 1 [ZMOD x] := by
    rw [Int.ModEq]
    -- Use the fact that if x divides (a - b), then a ≡ b [ZMOD x]
    simpa [Int.emod_eq_emod_iff_emod_sub_eq_zero] using h_div
  
  exact h_cong