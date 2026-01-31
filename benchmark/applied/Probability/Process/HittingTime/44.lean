import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingBtwn_prod_snd
    [ConditionallyCompleteLinearOrder ι]
    {u : ι → Ω → β} {v : ι → Ω → γ} {t : Set γ} {n m : ι} :
    hittingBtwn (fun i ω => (u i ω, v i ω)) (Set.univ ×ˢ t) n m
      = hittingBtwn v t n m := by
  sorry
