import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

/-
NOTE: The lemma as originally stated is *not true* in general.

Original (incorrect) statement:

theorem stoppedProcess_absorbing
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : MeasureTheory.Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    {τ : Ω → ℕ∞} (n : ℕ) :
    ∀ ω, (τ ω).toNat ≤ n →
      MeasureTheory.stoppedProcess f τ (n + 1) ω =
        MeasureTheory.stoppedProcess f τ n ω := ...

Counterexample:
- Take Ω := PUnit, τ := fun _ => (⊤ : ℕ∞) (never stops).
- Then (τ ω).toNat = 0 ≤ n for all n,
  but stoppedProcess f τ n ω = f n ω,
  so the conclusion would force f (n+1) ω = f n ω for arbitrary f,
  which is false.

So we instead prove a mathematically correct version, using the
ℕ∞-inequality τ ω ≤ n.

-/

/-- Correct absorbing property: once the stopping time has **actually occurred**
(at state `ω` by time `n` in the sense `τ ω ≤ n` in `ℕ∞`), the stopped process
is constant from time `n` onward. -/
theorem stoppedProcess_absorbing_correct
    {Ω : Type*} {m0 : MeasurableSpace Ω}
    {𝒢 : MeasureTheory.Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    {τ : Ω → ℕ∞} (n : ℕ) :
    ∀ ω, τ ω ≤ n →
      MeasureTheory.stoppedProcess f τ (n + 1) ω =
        MeasureTheory.stoppedProcess f τ n ω := by
  intro ω hω
  -- Expand the definition of the stopped process.
  -- In Mathlib, for filtration indexed by ℕ and stopping time τ : Ω → ℕ∞,
  -- `stoppedProcess f τ n ω = f (min (n : ℕ∞) (τ ω)).untopA ω`.
  -- We use `simp` to rewrite both sides using this definition and the fact that
  -- `min (↑n) (τ ω) = τ ω` and `min (↑(n+1)) (τ ω) = τ ω` when `τ ω ≤ n`.
  have hω_succ : τ ω ≤ (n + 1 : ℕ∞) := by
    -- cast `n : ℕ` into `ℕ∞` and use monotonicity
    have : (n : ℕ∞) ≤ (n + 1 : ℕ∞) := by
      -- In `ℕ∞`, `(n : ℕ∞) ≤ (n+1 : ℕ∞)` holds as usual.
      -- This is automatic from the order on `ℕ∞`.
      exact_mod_cast (Nat.le_succ n)
    exact le_trans hω this
  -- Now simplify both stopped processes.
  -- `min_eq_right` for `ℕ∞` needs the inequality `?_ ≤ ?_`.
  simp [MeasureTheory.stoppedProcess, min_eq_right hω_succ, min_eq_right hω]