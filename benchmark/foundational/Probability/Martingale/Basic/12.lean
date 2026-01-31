import Mathlib

open MeasureTheory

theorem Martingale.ae_eq_const_of_tail_trivial
    {Ω E ι} [Preorder ι]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : Filtration ι m0} {f : ι → Ω → E}
    (hf : Martingale f ℱ μ)
    (htail : ∀ i, ℱ i = ⊥) :
    ∀ i, ∃ c : E, f i =ᵐ[μ] fun _ => c := by
  sorry