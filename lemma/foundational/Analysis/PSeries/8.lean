import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

/-- If `u : ℕ → ℕ` is strictly increasing, then the successive differences are positive:
for every `n`, `0 < u (n + 1) - u n`. -/
lemma StrictMono.succDiff_pos {u : ℕ → ℕ} (hu : StrictMono u) : ∀ n, 0 < u (n + 1) - u n := by
  intro n
  have : u n < u (n + 1) := hu (Nat.lt_succ_self n)
  exact Nat.sub_pos_of_lt this

lemma StrictMono.succDiff_pos' {u : ℕ → ℕ} (hu : StrictMono u) :
    ∀ n, 0 < u (n + 1) - u n := by
  intro n
  have h₁ : u n < u (n + 1) := by
    apply hu
    <;> simp [Nat.lt_succ_self]
    <;> omega

  have h₂ : 0 < u (n + 1) - u n := by
    have h₃ : u n < u (n + 1) := h₁
    have h₄ : u (n + 1) - u n > 0 := by
      -- Use the property of natural numbers that if a < b, then b - a > 0
      have h₅ : u n < u (n + 1) := h₃
      have h₆ : u (n + 1) - u n > 0 := by
        -- Prove that the difference is positive
        have h₇ : u (n + 1) > u n := by linarith
        have h₈ : u (n + 1) - u n ≥ 1 := by
          -- Since u (n + 1) > u n, the difference is at least 1
          have h₉ : u (n + 1) ≥ u n + 1 := by
            omega
          omega
        omega
      exact h₆
    -- Convert the inequality to the desired form
    omega

  exact h₂
