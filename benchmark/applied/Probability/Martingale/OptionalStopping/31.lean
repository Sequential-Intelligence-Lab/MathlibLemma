import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped MeasureTheory
open MeasureTheory

-- 34. Stopped process of L²-bounded martingale is L²-bounded
theorem Martingale.L2bounded_stopped_of_L2bounded
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hM : Martingale f 𝒢 μ)
    (hL2 : ∀ n, Integrable (fun ω => (f n ω)^2) μ)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    {N : ℕ} (hbdd : ∀ ω, τ ω ≤ N) :
    Integrable (fun ω => (stoppedValue f τ ω)^2) μ := by
  sorry