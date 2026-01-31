import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.exists_inv_mod_of_coprime_nat {a n : ℤ} (h : Int.gcd a n = 1) :
    ∃ b : ℤ, a * b ≡ 1 [ZMOD n] := by
  have h_bezout : ∃ (x y : ℤ), a * x + n * y = 1 := by
    have h₁ : a * a.gcdA n + n * a.gcdB n = Int.gcd a n := by
      rw [Int.gcd_eq_gcd_ab]
    have h₂ : a * a.gcdA n + n * a.gcdB n = 1 := by
      rw [h₁]
      <;> simp [h]
    refine' ⟨a.gcdA n, a.gcdB n, _⟩
    linarith
  
  have h_main : ∃ b : ℤ, a * b ≡ 1 [ZMOD n] := by
    obtain ⟨x, y, hxy⟩ := h_bezout
    use x
    have h₁ : a * x + n * y = 1 := hxy
    have h₂ : a * x - 1 = - (n * y) := by linarith
    have h₃ : (n : ℤ) ∣ (a * x - 1) := by
      use -y
      linarith
    -- Use the fact that n divides a * x - 1 to show that a * x ≡ 1 [ZMOD n]
    simpa [Int.ModEq, Int.emod_eq_emod_iff_emod_sub_eq_zero] using h₃
  
  exact h_main