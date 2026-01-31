import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.one_le_rpow_iff_of_between (x : ℝ) (hx0 : 0 < x) (hx1 : x < 1) :
    1 ≤ x ^ y ↔ y ≤ 0 := by
  have h_main : 1 ≤ x ^ y ↔ y = 0 := by
    constructor
    · -- Prove the forward direction: if 1 ≤ x ^ y, then y = 0
      intro h
      by_contra hy
      -- Assume y ≠ 0, then y ≥ 1
      have h₁ : y ≠ 0 := hy
      have h₂ : y ≥ 1 := by
        by_contra h₂
        -- If y is not ≥ 1, then y = 0
        interval_cases y <;> simp_all (config := {decide := true})
      -- Prove that x ^ y < 1 when y ≥ 1
      have h₃ : x ^ y < 1 := by
        have h₄ : x ^ y < 1 := by
          -- Use the fact that 0 < x < 1 and y ≥ 1 to show x ^ y < 1
          have h₅ : x ^ y < 1 := by
            -- Prove by induction on y
            have h₆ : ∀ (n : ℕ), n ≥ 1 → x ^ n < 1 := by
              intro n hn
              induction' hn with n hn IH
              · -- Base case: n = 1
                norm_num at hx1 ⊢
                <;> linarith
              · -- Inductive step: assume true for n, prove for n + 1
                calc
                  x ^ (n + 1) = x ^ n * x := by ring_nf
                  _ < 1 * x := by gcongr
                  _ = x := by ring
                  _ < 1 := by linarith
            -- Apply the general result to y
            have h₇ : y ≥ 1 := h₂
            have h₈ : x ^ y < 1 := h₆ y h₇
            exact h₈
          exact h₅
        exact h₄
      -- Contradiction with 1 ≤ x ^ y
      linarith
    · -- Prove the reverse direction: if y = 0, then 1 ≤ x ^ y
      intro h
      rw [h]
      norm_num
      <;>
      (try norm_num at hx0 hx1 ⊢) <;>
      (try linarith) <;>
      (try positivity)
  
  have h_final : 1 ≤ x ^ y ↔ y ≤ 0 := by
    have h₁ : 1 ≤ x ^ y ↔ y = 0 := h_main
    have h₂ : (y : ℕ) ≤ 0 ↔ y = 0 := by
      constructor
      · -- Prove the forward direction: if y ≤ 0, then y = 0
        intro h
        have h₃ : y ≤ 0 := h
        have h₄ : y = 0 := by
          -- Since y is a natural number, y ≤ 0 implies y = 0
          have h₅ : y ≤ 0 := h₃
          have h₆ : y ≥ 0 := by
            -- Natural numbers are non-negative
            exact Nat.zero_le y
          omega
        exact h₄
      · -- Prove the reverse direction: if y = 0, then y ≤ 0
        intro h
        have h₃ : y = 0 := h
        have h₄ : y ≤ 0 := by
          -- Since y = 0, y ≤ 0
          rw [h₃]
          <;> norm_num
        exact h₄
    -- Combine the two equivalences
    calc
      1 ≤ x ^ y ↔ y = 0 := h₁
      _ ↔ (y : ℕ) ≤ 0 := by
        -- Convert y = 0 to y ≤ 0 using the fact that y is a natural number
        simpa [h₂] using h₂
  
  exact h_final