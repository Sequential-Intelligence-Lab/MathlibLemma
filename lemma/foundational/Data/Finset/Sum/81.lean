import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toLeft_image_sumComm_eq_toRight {α β}
    [DecidableEq (α ⊕ β)] [DecidableEq (β ⊕ α)]
    (u : Finset (α ⊕ β)) :
    (u.image (Equiv.sumComm _ _)).toLeft = u.toRight := by
  -- Use set extensionality to show equality by proving inclusion in both directions.
  apply Finset.ext
  intro x
  -- Forward direction: If x is in the left part of the image, then it is in the right part of u.
  constructor <;> simp (config := { contextual := true }) [Finset.mem_image, Equiv.sumComm_apply]
  -- For the forward direction, assume x is in the left part of the image.
  <;> intro h
  -- Extract the element z in u such that x is the left part of sumComm z.
  <;> cases' h with z hz
  -- Since sumComm z swaps the summands, x is the right part of z.
  <;> simp_all [Finset.mem_toRight, Finset.mem_toLeft]
  -- For the reverse direction, assume x is in the right part of u.
  <;> use Equiv.sumComm _ _ x
  -- Since sumComm is an equivalence, x is in the image of sumComm applied to u.
  <;> simp_all [Finset.mem_toRight, Finset.mem_toLeft]