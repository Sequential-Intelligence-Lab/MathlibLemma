import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.exists_inv_mod_of_coprime_nat' {a : ℤ} {n : ℕ} (h : Int.gcd a n = 1) :
    ∃ b : ℤ, a * b ≡ 1 [ZMOD n] := by
  have h_bezout : ∃ (x y : ℤ), a * x + (n : ℤ) * y = 1 := by
    have h₁ : (Int.gcd a n : ℤ) = 1 := by exact_mod_cast h
    -- Use Bézout's identity to find x and y such that a * x + n * y = 1
    have h₂ : ∃ x y : ℤ, a * x + (n : ℤ) * y = (Int.gcd a n : ℤ) := by
      -- Use the lemma Int.gcd_eq_gcd_ab to get Bézout coefficients
      use Int.gcdA a n, Int.gcdB a n
      have h₃ := Int.gcd_eq_gcd_ab a n
      -- Simplify the equation to match the form we need
      norm_cast at h₃ ⊢
      <;> simp_all [Int.gcd_eq_gcd_ab]
      <;> linarith
    -- Obtain x and y from the existence statement
    obtain ⟨x, y, h₃⟩ := h₂
    -- Use the fact that gcd(a, n) = 1 to get a * x + n * y = 1
    have h₄ : a * x + (n : ℤ) * y = 1 := by
      linarith
    -- Return the x and y we found
    exact ⟨x, y, h₄⟩
  
  have h_main : ∃ b : ℤ, a * b ≡ 1 [ZMOD n] := by
    obtain ⟨x, y, hxy⟩ := h_bezout
    use x
    have h₁ : (a * x : ℤ) ≡ 1 [ZMOD (n : ℤ)] := by
      -- Use the fact that a * x + n * y = 1 to show a * x ≡ 1 [ZMOD n]
      have h₂ : (a * x : ℤ) + (n : ℤ) * y = 1 := by exact_mod_cast hxy
      have h₃ : (a * x : ℤ) ≡ 1 [ZMOD (n : ℤ)] := by
        -- Use the property of congruence to simplify the equation
        calc
          (a * x : ℤ) = 1 - (n : ℤ) * y := by linarith
          _ ≡ 1 [ZMOD (n : ℤ)] := by
            -- Show that 1 - n * y ≡ 1 [ZMOD n]
            have h₄ : (1 - (n : ℤ) * y : ℤ) ≡ 1 [ZMOD (n : ℤ)] := by
              -- Use the property of congruence to simplify the expression
              have h₅ : ((n : ℤ) * y : ℤ) ≡ 0 [ZMOD (n : ℤ)] := by
                -- n * y ≡ 0 [ZMOD n]
                simp [Int.ModEq, Int.emod_eq_emod_iff_emod_sub_eq_zero]
                <;> ring_nf
                <;> simp [Int.mul_emod]
              -- Use the fact that n * y ≡ 0 [ZMOD n] to simplify 1 - n * y
              have h₆ : (1 - (n : ℤ) * y : ℤ) ≡ 1 - 0 [ZMOD (n : ℤ)] := by
                -- Use the property of congruence to subtract the congruent terms
                exact Int.ModEq.sub (Int.ModEq.refl 1) h₅
              -- Simplify the right-hand side
              simpa using h₆
            exact h₄
      exact h₃
    -- Cast the modulus to natural number if necessary
    have h₂ : (a * x : ℤ) ≡ 1 [ZMOD (n : ℕ)] := by
      -- Use the fact that [ZMOD n] is the same as [ZMOD (n : ℕ)]
      simpa [Int.ModEq] using h₁
    exact h₂
  
  exact h_main