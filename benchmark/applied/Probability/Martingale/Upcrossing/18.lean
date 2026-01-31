import Mathlib

-- Lemmas about crossing times specifically

-- We declare upperCrossingTime as an axiom with the expected type.
axiom upperCrossingTime
    (Ω : Type) (a b : ℝ) (f : ℕ → Ω → ℝ) (N : ℕ) (n : ℕ) (ω : Ω) : ℕ

lemma upperCrossingTime_le_of_le_left
    {Ω : Type} {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ}
    {n m : ℕ} {ω : Ω} (h : m ≤ n) :
    upperCrossingTime Ω a b f N m ω ≤
      upperCrossingTime Ω a b f N n ω := by
  sorry