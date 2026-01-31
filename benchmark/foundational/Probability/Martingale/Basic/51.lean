import Mathlib

open MeasureTheory

theorem Supermartingale.anti_nat
    {Ω} {m0 : MeasurableSpace Ω}
    {𝒢 : MeasureTheory.Filtration ℕ m0}
    {μ : MeasureTheory.Measure Ω}
    {f g : ℕ → Ω → ℝ}
    (hf : MeasureTheory.Supermartingale f 𝒢 μ)
    (hg : MeasureTheory.Supermartingale g 𝒢 μ)
    (hanti : ∀ n, g n ≤ᵐ[μ] f n) :
    MeasureTheory.Supermartingale (fun n ω => min (f n ω) (g n ω)) 𝒢 μ := by
  sorry