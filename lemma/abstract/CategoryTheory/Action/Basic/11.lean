import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma mulAction_smul_conj {V G : Type*} [Group G] [Mul V] [MulAction G V]
    (g h : G) (x : V) :
    (g * h * g⁻¹) • x = g • (h • (g⁻¹ • x)) := by
  -- Use the compatibility property of group actions to break down the left-hand side.
  rw [mul_assoc, mul_smul]
  -- Simplify the expression using the properties of group actions.
  <;> simp [smul_smul]
  -- Use the associativity and other properties to rearrange the terms.
  <;> simp_all [mul_assoc, mul_smul, smul_smul]