import Mathlib

open scoped MeasureTheory

open MeasureTheory

theorem Submartingale.mono_nat
    {Ω} {m0 : MeasurableSpace Ω}
    {μ : Measure Ω} [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f g : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ)
    (hg : Submartingale g 𝒢 μ)
    (hmono : ∀ n, f n ≤ᵐ[μ] g n) :
    Submartingale (fun n ω => max (f n ω) (g n ω)) 𝒢 μ := by
  sorry