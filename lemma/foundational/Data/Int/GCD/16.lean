import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Nat.gcdA_coprime (x y : ℕ) (h : Nat.Coprime x y) :
    x * Nat.gcdA x y ≡ 1 [ZMOD y] := by
  have h_bezout : (Nat.gcdA x y : ℤ) * x + (Nat.gcdB x y : ℤ) * y = 1 := by
    have h₁ : (Nat.gcdA x y : ℤ) * x + (Nat.gcdB x y : ℤ) * y = (Nat.gcd x y : ℤ) := by
      have h₂ := Nat.gcd_eq_gcd_ab x y
      norm_cast at h₂ ⊢
      <;> simp_all [Int.ofNat_add, Int.ofNat_mul]
      <;> ring_nf at *
      <;> linarith
    have h₂ : (Nat.gcd x y : ℕ) = 1 := by
      rw [Nat.coprime_iff_gcd_eq_one] at h
      exact h
    have h₃ : (Nat.gcd x y : ℤ) = 1 := by
      norm_cast
      <;> simp [h₂]
    rw [h₁, h₃]
    <;> norm_num
  
  have h_mod : (Nat.gcdA x y : ℤ) * x ≡ 1 [ZMOD y] := by
    have h₁ : (Nat.gcdA x y : ℤ) * x + (Nat.gcdB x y : ℤ) * y = 1 := h_bezout
    have h₂ : (Nat.gcdA x y : ℤ) * x = 1 - (Nat.gcdB x y : ℤ) * y := by linarith
    have h₃ : (Nat.gcdA x y : ℤ) * x ≡ 1 [ZMOD y] := by
      calc
        (Nat.gcdA x y : ℤ) * x = 1 - (Nat.gcdB x y : ℤ) * y := by rw [h₂]
        _ ≡ 1 [ZMOD y] := by
          -- Use the fact that (Nat.gcdB x y : ℤ) * y ≡ 0 [ZMOD y]
          have h₄ : ((Nat.gcdB x y : ℤ) * y : ℤ) ≡ 0 [ZMOD y] := by
            -- (Nat.gcdB x y : ℤ) * y is clearly divisible by y
            simp [Int.ModEq, Int.emod_eq_emod_iff_emod_sub_eq_zero]
            <;>
            ring_nf <;>
            simp [Int.mul_emod, Int.emod_emod]
          -- Subtract the congruence from 1 ≡ 1 [ZMOD y]
          have h₅ : (1 : ℤ) ≡ 1 [ZMOD y] := by rfl
          have h₆ : (1 : ℤ) - (Nat.gcdB x y : ℤ) * y ≡ 1 - 0 [ZMOD y] := by
            exact Int.ModEq.sub h₅ h₄
          -- Simplify the right-hand side
          have h₇ : (1 : ℤ) - 0 = (1 : ℤ) := by ring
          have h₈ : (1 : ℤ) - (Nat.gcdB x y : ℤ) * y ≡ 1 [ZMOD y] := by
            simpa [h₇] using h₆
          exact h₈
    exact h₃
  
  have h_comm : (x : ℤ) * (Nat.gcdA x y : ℤ) ≡ 1 [ZMOD y] := by
    have h₁ : (x : ℤ) * (Nat.gcdA x y : ℤ) = (Nat.gcdA x y : ℤ) * x := by ring
    rw [h₁]
    exact h_mod
  
  have h_final : x * Nat.gcdA x y ≡ 1 [ZMOD y] := by
    -- We need to show that x * Nat.gcdA x y ≡ 1 [ZMOD y]
    -- This is equivalent to showing (x : ℤ) * (Nat.gcdA x y : ℤ) ≡ 1 [ZMOD y]
    -- which is already given by h_comm
    simpa [Int.ModEq] using h_comm
  
  exact h_final