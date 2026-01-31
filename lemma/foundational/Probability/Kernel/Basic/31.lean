import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Kernel.swap_map_snd {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (ab : α × β) :
    MeasureTheory.Measure.map Prod.snd
      (ProbabilityTheory.Kernel.swap α β ab)
      = MeasureTheory.Measure.dirac ab.1 := by
  have h₁ : MeasureTheory.Measure.map Prod.snd (ProbabilityTheory.Kernel.swap α β ab) = MeasureTheory.Measure.dirac ab.1 := by
    sorry
  apply h₁