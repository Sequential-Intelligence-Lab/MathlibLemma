import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Graph.IsLink.ne_left_of_right_ne {G : Graph α β}
    (h : G.IsLink e x y) (h' : G.IsLink e z y) (hxy : x ≠ z) :
    False := by
  have h₁ : False := by
    have h₂ : x = z := by sorry
    have h₃ : x ≠ z := hxy
    exact h₃ h₂
  exact h₁