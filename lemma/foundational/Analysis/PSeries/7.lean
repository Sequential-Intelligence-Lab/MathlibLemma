import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma SuccDiffBounded.succDiff_nonneg {C : ℕ} {u : ℕ → ℕ}
    (h : SuccDiffBounded C u) (hu : Monotone u) :
    ∀ n, u (n + 1) - u n ≠ 0 → 0 < u (n + 1) - u n := by
  intro n hn
  have h1 := h n
  have h2 := hu (le_refl n)
  cases' le_total 0 (u (n + 1) - u n) with h3 h3 <;> simp_all
  <;> omega