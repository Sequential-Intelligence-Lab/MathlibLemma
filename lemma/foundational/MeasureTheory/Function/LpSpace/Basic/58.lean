import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Lp.negPart_neg {α : Type*} {m : MeasurableSpace α} {p : ENNReal}
    (μ : MeasureTheory.Measure α) (f : MeasureTheory.Lp ℝ p μ) :
    MeasureTheory.Lp.negPart (-f) = MeasureTheory.Lp.posPart f := by
  simp [MeasureTheory.Lp.negPart, MeasureTheory.Lp.posPart]
  all_goals try { 
    simp [SimpleFunc.negPart, SimpleFunc.posPart]
    all_goals try { 
      funext x
      all_goals try { 
        simp
        all_goals try { linarith }
      }
    }
  }