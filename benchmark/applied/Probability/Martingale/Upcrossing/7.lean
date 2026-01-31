import Mathlib

open MeasureTheory

lemma hittingBtwn_antitone_right
    {ι Ω} [Preorder ι] [OrderBot ι] [InfSet ι]
    {f : ι → Ω → ℝ} {s : Set ℝ}
    [MeasurableSpace Ω] :
    Antitone (fun N : ι => MeasureTheory.hittingBtwn f s (⊥ : ι) N) := by
  sorry