import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Real.cauchy_inj_iff {x y : ℝ} : x.cauchy = y.cauchy ↔ x = y := by
  constructor
  · -- Assume x.cauchy = y.cauchy, prove x = y
    intro h
    have h1 : x = y := by
      have h2 : x.cauchy = y.cauchy := h
      cases x
      cases y
      all_goals
        try { 
          simp_all [h2]
        }
    exact h1
  · -- Assume x = y, prove x.cauchy = y.cauchy
    intro h
    rw [h]