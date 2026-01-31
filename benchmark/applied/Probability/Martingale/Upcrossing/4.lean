import Mathlib

open MeasureTheory

variable {ι Ω : Type _}

lemma hittingBtwn_eq_left_of_all_mem
    [Preorder ι] [InfSet ι]
    (f : ι → Ω → ι) {s : Set ι}
    (h : ∀ i ω, f i ω ∈ s) (c N : ι) :
    hittingBtwn f s c N = fun _ : Ω => c := by
  sorry