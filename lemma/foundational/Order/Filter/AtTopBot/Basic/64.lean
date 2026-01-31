import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.mem_atTop_sets_iff_nat {s : Set ℕ} :
    s ∈ (Filter.atTop : Filter ℕ) ↔ ∃ N, ∀ n ≥ N, n ∈ s := by
  -- Construct the equivalence by proving both directions.
  constructor <;> simp (config := { contextual := true }) [Filter.mem_atTop, Set.mem_setOf_eq]
  -- Forward direction: Assume `s ∈ atTop`, derive the existence of `N`.
  <;> intro h
  <;> cases' h with N hN
  <;> use N
  <;> intro n hn
  <;> apply hN <;> assumption
  -- Backward direction: Assume the existence of `N`, prove `s ∈ atTop`.
  <;> intro n hn
  <;> apply h <;> assumption