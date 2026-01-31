import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.gcdA_coprime (x y : ℤ) (h : Int.gcd x y = 1) :
    x * Int.gcdA x y ≡ 1 [ZMOD y] := by
  have h_bezout : x * Int.gcdA x y + y * Int.gcdB x y = 1 := by
    have h₁ : x * Int.gcdA x y + y * Int.gcdB x y = Int.gcd x y := by
      rw [Int.gcd_eq_gcd_ab x y]
    rw [h₁]
    <;> simp [h]
  
  have h_mod : (x * Int.gcdA x y) % y = 1 % y := by
    have h₁ : (x * Int.gcdA x y + y * Int.gcdB x y) % y = 1 % y := by
      rw [h_bezout]
    have h₂ : (x * Int.gcdA x y + y * Int.gcdB x y) % y = (x * Int.gcdA x y) % y := by
      have h₃ : (y * Int.gcdB x y) % y = 0 := by
        have h₄ : (y * Int.gcdB x y) % y = 0 := by
          simp [Int.mul_emod, Int.emod_emod]
        exact h₄
      have h₄ : (x * Int.gcdA x y + y * Int.gcdB x y) % y = ((x * Int.gcdA x y) % y + (y * Int.gcdB x y) % y) % y := by
        simp [Int.add_emod]
      rw [h₄]
      have h₅ : ((x * Int.gcdA x y) % y + (y * Int.gcdB x y) % y) % y = ((x * Int.gcdA x y) % y + 0) % y := by
        rw [h₃]
        <;> simp [Int.add_emod]
      rw [h₅]
      have h₆ : ((x * Int.gcdA x y) % y + 0) % y = (x * Int.gcdA x y) % y := by
        simp [Int.add_emod]
      rw [h₆]
    rw [h₂] at h₁
    exact h₁
  
  have h_final : x * Int.gcdA x y ≡ 1 [ZMOD y] := by
    rw [Int.ModEq]
    exact h_mod
  
  exact h_final