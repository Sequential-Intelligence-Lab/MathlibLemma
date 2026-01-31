import Mathlib

variable {Ω : Type _}

/-- Placeholder type of `upcrossingStrat` so that the lemma type-checks. -/
def upcrossingStrat :
  ℝ → ℝ → (ℕ → Ω → ℝ) → ℕ → ℕ → Ω → ℝ :=
fun _ _ _ _ _ _ => 0

lemma upcrossingStrat_sum_le_total_variation
    {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ} (ω : Ω) :
    |∑ k ∈ Finset.range N,
        upcrossingStrat a b f N k ω * (f (k+1) ω - f k ω)| ≤
      ∑ k ∈ Finset.range N, |f (k+1) ω - f k ω| := by
  sorry