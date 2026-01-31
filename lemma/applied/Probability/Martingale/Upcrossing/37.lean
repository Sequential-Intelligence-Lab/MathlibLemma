import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

def upcrossingStrat :
  ℝ → ℝ → (ℕ → Ω → ℝ) → ℕ → ℕ → Ω → ℝ :=
fun _ _ _ _ _ _ => 0

lemma upcrossingStrat_sum_le_total_variation
    {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ} (ω : Ω) :
    |∑ k ∈ Finset.range N,
        upcrossingStrat a b f N k ω * (f (k+1) ω - f k ω)| ≤
      ∑ k ∈ Finset.range N, |f (k+1) ω - f k ω| := by
  have h_sum_zero : (∑ k ∈ Finset.range N, upcrossingStrat a b f N k ω * (f (k+1) ω - f k ω)) = 0 := by
    have h₁ : ∀ k ∈ Finset.range N, upcrossingStrat a b f N k ω * (f (k + 1) ω - f k ω) = 0 := by
      intro k hk
      simp [upcrossingStrat]
    calc
      (∑ k ∈ Finset.range N, upcrossingStrat a b f N k ω * (f (k + 1) ω - f k ω)) =
          ∑ k ∈ Finset.range N, 0 := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [h₁ k hk]
      _ = 0 := by simp
  
  have h_abs_sum_zero : |∑ k ∈ Finset.range N, upcrossingStrat a b f N k ω * (f (k+1) ω - f k ω)| = 0 := by
    rw [h_sum_zero]
    simp [abs_of_nonneg]
    <;>
    norm_num
  
  have h_sum_nonneg : 0 ≤ ∑ k ∈ Finset.range N, |f (k+1) ω - f k ω| := by
    apply Finset.sum_nonneg
    intro i _
    exact abs_nonneg _
  
  have h_main : |∑ k ∈ Finset.range N, upcrossingStrat a b f N k ω * (f (k+1) ω - f k ω)| ≤ ∑ k ∈ Finset.range N, |f (k+1) ω - f k ω| := by
    rw [h_abs_sum_zero]
    <;>
    (try norm_num) <;>
    (try linarith) <;>
    (try exact h_sum_nonneg)
  
  exact h_main