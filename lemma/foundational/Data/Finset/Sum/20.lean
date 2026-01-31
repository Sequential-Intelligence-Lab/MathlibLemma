import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_erase_left {α β} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t : Finset β) (a : α) :
    (s.erase a).disjSum t = (s.disjSum t).erase (.inl a) := by
  have h_main : (s.erase a).disjSum t = (s.disjSum t).erase (.inl a) := by
    apply Finset.ext
    intro z
    simp only [Finset.mem_erase, Finset.mem_disjSum, Finset.mem_coe, Finset.mem_insert,
      Finset.mem_singleton]
    -- We consider the two cases for z: z = inl x and z = inr y
    cases z with
    | inl x =>
      -- Case z = inl x
      by_cases h : x = a <;>
      by_cases h₁ : x ∈ s <;>
      by_cases h₂ : x ∈ s.erase a <;>
      simp_all [Finset.mem_erase, Finset.mem_singleton]
      <;>
      (try { contradiction }) <;>
      (try { aesop }) <;>
      (try {
        simp_all [Finset.mem_erase, Finset.mem_singleton]
        <;>
        tauto
      })
    | inr y =>
      -- Case z = inr y
      by_cases h₁ : y ∈ t <;>
      simp_all [Finset.mem_erase, Finset.mem_singleton]
      <;>
      (try { aesop }) <;>
      (try {
        simp_all [Finset.mem_erase, Finset.mem_singleton]
        <;>
        tauto
      })
  exact h_main