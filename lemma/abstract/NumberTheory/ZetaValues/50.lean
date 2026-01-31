import Mathlib

noncomputable section

open Classical
open Polynomial

lemma bernoulliFun_isPoly (k : ℕ) :
    ∃ p : Polynomial ℝ, ∀ x, bernoulliFun k x = p.eval x := by
  refine ⟨(Polynomial.bernoulli k).map (algebraMap ℚ ℝ), ?_⟩
  intro x
  -- `bernoulliFun` is defined via `aeval` of the Bernoulli polynomial,
  -- and `aeval_def` plus `Polynomial.eval₂_at` relate this to `Polynomial.eval`
  -- of the mapped polynomial.
  simpa [bernoulliFun, aeval_def]  -- `simp` uses `Polynomial.eval₂_at` here