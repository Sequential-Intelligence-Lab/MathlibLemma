import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma stoppedValue_hittingBtwn_indicator
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι]
    {u : ι → Ω → ℝ} {s : Set ℝ} {n m : ι} :
    (stoppedValue u (fun ω => (hittingBtwn u s n m ω : ι)))
      = fun ω => u (hittingBtwn u s n m ω) ω := by
  have h_main : (stoppedValue u (fun ω => (hittingBtwn u s n m ω : ι))) = fun ω => u (hittingBtwn u s n m ω) ω := by
    funext ω
    <;> rfl
  
  exact h_main