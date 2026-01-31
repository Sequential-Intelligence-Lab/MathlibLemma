import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
--------------------------------------------------------------------------------
-- Products and compositions of processes
--------------------------------------------------------------------------------

lemma hittingBtwn_prod_fst
    [ConditionallyCompleteLinearOrder ι]
    {u : ι → Ω → β} {v : ι → Ω → γ} {s : Set β} {n m : ι} :
    hittingBtwn (fun i ω => (u i ω, v i ω)) (s ×ˢ Set.univ) n m
      = hittingBtwn u s n m := by
  sorry
