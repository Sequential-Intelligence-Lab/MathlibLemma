import Mathlib

open scoped BigOperators

variable {Ω : Type _}

/-- Dummy declaration for `upcrossingStrat` with the expected type shape. -/
def upcrossingStrat (a b : ℝ) (f : ℕ → Ω → ℝ) (N : ℕ) : ℕ → Ω → ℝ :=
  fun _ _ => 0

/-- Dummy declaration for `lowerCrossingTime` with the expected type shape. -/
def lowerCrossingTime (a b : ℝ) (f : ℕ → Ω → ℝ) (N : ℕ) (k : ℕ) : Ω → ℕ :=
  fun _ => 0

/-- Dummy declaration for `upperCrossingTime` with the expected type shape. -/
def upperCrossingTime (a b : ℝ) (f : ℕ → Ω → ℝ) (N : ℕ) (k : ℕ) : Ω → ℕ :=
  fun _ => 0

lemma upcrossingStrat_eq_indicator_interval
    {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ}
    {ω : Ω} :
    (upcrossingStrat a b f N · ω) =
      (fun n =>
        (∑ k ∈ Finset.range N,
          (Set.Ico (lowerCrossingTime a b f N k ω)
                   (upperCrossingTime a b f N (k+1) ω)).indicator (1 : ℕ → ℝ) n)) := by
  sorry