import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory ProbabilityTheory

-- 28. Martingale property under truncation in time
theorem Martingale.truncate
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Martingale f 𝒢 μ)
    (N : ℕ) :
    Martingale (fun n ω => f (Nat.min n N) ω) 𝒢 μ := by
  sorry