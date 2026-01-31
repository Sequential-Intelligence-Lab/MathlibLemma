import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

--------------------------------------------------------------------------------
-- Relations between different hitting times
--------------------------------------------------------------------------------

lemma hittingBtwn_le_hittingBtwn_of_subset
    [ConditionallyCompleteLinearOrder ι]
    {u : ι → Ω → β} {s t : Set β} {n m : ι}
    (hsub : s ⊆ t) (ω : Ω) :
    hittingBtwn u t n m ω ≤ hittingBtwn u s n m ω ∨
    hittingBtwn u s n m ω = m := by
  sorry