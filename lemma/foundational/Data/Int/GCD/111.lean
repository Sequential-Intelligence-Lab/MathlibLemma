import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exists_mul_emod_eq_one_of_coprime' {k n : ℕ} (hkn : Nat.Coprime n k) (hk : 1 < k) :
    ∃ m : ℤ, (n : ℤ) * m % k = 1 := by
  have h₁ : Int.gcd (n : ℤ) (k : ℤ) = 1 := by
    rw [Int.gcd_eq_natAbs]
    norm_cast
    <;> simp_all [Nat.coprime_iff_gcd_eq_one, Nat.gcd_comm]
    <;>
    (try decide) <;>
    (try omega)
    <;>
    (try ring_nf at * <;> simp_all)
  
  have h₂ : ∃ (a b : ℤ), (n : ℤ) * a + (k : ℤ) * b = 1 := by
    have h₃ : ∃ a b : ℤ, (n : ℤ) * a + (k : ℤ) * b = Int.gcd (n : ℤ) (k : ℤ) := by
      use Int.gcdA (n : ℤ) (k : ℤ), Int.gcdB (n : ℤ) (k : ℤ)
      have h₄ := Int.gcd_eq_gcd_ab (n : ℤ) (k : ℤ)
      linarith
    obtain ⟨a, b, h₄⟩ := h₃
    have h₅ : (Int.gcd (n : ℤ) (k : ℤ) : ℤ) = 1 := by
      norm_cast at h₁ ⊢
      <;> simp_all [Int.gcd_eq_natAbs]
    have h₆ : (n : ℤ) * a + (k : ℤ) * b = 1 := by
      linarith
    exact ⟨a, b, h₆⟩
  
  have h₃ : ∃ (m : ℤ), (n : ℤ) * m % k = 1 := by
    obtain ⟨a, b, h₄⟩ := h₂
    use a
    have h₅ : ((n : ℤ) * a : ℤ) % (k : ℤ) = 1 % (k : ℤ) := by
      have h₅₁ : ((n : ℤ) * a : ℤ) ≡ 1 [ZMOD (k : ℤ)] := by
        -- Use the fact that (n : ℤ) * a + (k : ℤ) * b = 1 to show that (n : ℤ) * a ≡ 1 [ZMOD (k : ℤ)]
        have h₅₂ : ((n : ℤ) * a : ℤ) + (k : ℤ) * b = 1 := by exact_mod_cast h₄
        have h₅₃ : ((n : ℤ) * a : ℤ) - 1 = -( (k : ℤ) * b) := by linarith
        have h₅₄ : ((n : ℤ) * a : ℤ) - 1 ≡ 0 [ZMOD (k : ℤ)] := by
          -- Show that ((n : ℤ) * a : ℤ) - 1 is divisible by (k : ℤ)
          rw [Int.ModEq]
          have h₅₅ : ((k : ℤ) : ℤ) ∣ -( (k : ℤ) * b) := by
            use -b
            <;> ring
          have h₅₆ : ((k : ℤ) : ℤ) ∣ ((n : ℤ) * a : ℤ) - 1 := by
            rw [h₅₃]
            exact h₅₅
          -- Use the fact that (k : ℤ) divides ((n : ℤ) * a : ℤ) - 1 to show that ((n : ℤ) * a : ℤ) - 1 ≡ 0 [ZMOD (k : ℤ)]
          simpa [Int.emod_eq_emod_iff_emod_sub_eq_zero] using h₅₆
        -- Use the fact that ((n : ℤ) * a : ℤ) - 1 ≡ 0 [ZMOD (k : ℤ)] to show that ((n : ℤ) * a : ℤ) ≡ 1 [ZMOD (k : ℤ)]
        have h₅₇ : ((n : ℤ) * a : ℤ) ≡ 1 [ZMOD (k : ℤ)] := by
          calc
            ((n : ℤ) * a : ℤ) ≡ ((n : ℤ) * a : ℤ) [ZMOD (k : ℤ)] := by rfl
            _ ≡ 1 [ZMOD (k : ℤ)] := by
              -- Use the fact that ((n : ℤ) * a : ℤ) - 1 ≡ 0 [ZMOD (k : ℤ)] to show that ((n : ℤ) * a : ℤ) ≡ 1 [ZMOD (k : ℤ)]
              have h₅₈ : ((n : ℤ) * a : ℤ) - 1 ≡ 0 [ZMOD (k : ℤ)] := h₅₄
              have h₅₉ : ((n : ℤ) * a : ℤ) ≡ 1 [ZMOD (k : ℤ)] := by
                calc
                  ((n : ℤ) * a : ℤ) = (((n : ℤ) * a : ℤ) - 1) + 1 := by ring
                  _ ≡ 0 + 1 [ZMOD (k : ℤ)] := by
                    -- Use the fact that ((n : ℤ) * a : ℤ) - 1 ≡ 0 [ZMOD (k : ℤ)] to show that (((n : ℤ) * a : ℤ) - 1) + 1 ≡ 0 + 1 [ZMOD (k : ℤ)]
                    gcongr
                  _ = 1 := by ring
              exact h₅₉
        exact h₅₇
      -- Use the fact that (n : ℤ) * a ≡ 1 [ZMOD (k : ℤ)] to show that ((n : ℤ) * a : ℤ) % (k : ℤ) = 1 % (k : ℤ)
      have h₅₂ : ((n : ℤ) * a : ℤ) ≡ 1 [ZMOD (k : ℤ)] := h₅₁
      rw [Int.ModEq] at h₅₂
      have h₅₃ : ((n : ℤ) * a : ℤ) % (k : ℤ) = 1 % (k : ℤ) := by
        simpa [Int.emod_eq_emod_iff_emod_sub_eq_zero] using h₅₂
      exact h₅₃
    -- Use the fact that ((n : ℤ) * a : ℤ) % (k : ℤ) = 1 % (k : ℤ) to show that ((n : ℤ) * a : ℤ) % (k : ℤ) = 1
    have h₆ : (1 : ℤ) % (k : ℤ) = 1 := by
      have h₆₁ : (k : ℤ) > 1 := by exact_mod_cast hk
      have h₆₂ : (1 : ℤ) % (k : ℤ) = 1 := by
        have h₆₃ : (1 : ℤ) < (k : ℤ) := by linarith
        have h₆₄ : (1 : ℤ) ≥ 0 := by norm_num
        have h₆₅ : (1 : ℤ) % (k : ℤ) = 1 := by
          rw [Int.emod_eq_of_lt] <;> norm_cast <;> omega
        exact h₆₅
      exact h₆₂
    have h₇ : ((n : ℤ) * a : ℤ) % (k : ℤ) = 1 := by
      rw [h₅]
      rw [h₆]
    -- Convert the result back to the desired form
    norm_cast at h₇ ⊢
    <;>
    (try omega) <;>
    (try ring_nf at * <;> simp_all) <;>
    (try norm_num at * <;> simp_all)
    <;>
    (try simp_all [Int.emod_eq_of_lt])
    <;>
    (try omega)
  
  exact h₃