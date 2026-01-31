import Mathlib

open MeasureTheory

variable {Ω Ω' E ι : Type _}

theorem MeasureTheory.Martingale.comp_equiv
    [Preorder ι]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {m0 : MeasurableSpace Ω} {m0' : MeasurableSpace Ω'}
    {μ' : Measure Ω'}
    {ℱ : Filtration ι m0} {ℱ' : Filtration ι m0'}
    (e : Ω ≃ᵐ Ω')
    (hfil : ∀ i, ℱ' i = (ℱ i).comap e.symm)
    {f' : ι → Ω' → E}
    (h : ∀ i ω', f' i ω' = (fun ω => f' i (e ω)) (e.symm ω')) :
    Martingale f' ℱ' μ' ↔
      Martingale (fun i ω => f' i (e ω)) ℱ (Measure.map (e.symm : Ω' → Ω) μ') := by
  sorry