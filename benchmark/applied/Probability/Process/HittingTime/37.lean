import Mathlib

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

lemma hittingBtwn_strictMono_process_unique
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι]
    [LinearOrder β] [TopologicalSpace β]
    {u : ι → Ω → β} {s : Set β} {n m : ι}
    (hmono : ∀ ω, StrictMono fun i => u i ω)
    (hs : IsClosed s)
    (hne : ∀ ω, ∃! i ∈ Set.Icc n m, u i ω ∈ s) :
    ∀ ω, u (hittingBtwn u s n m ω) ω ∈ s := by
  sorry