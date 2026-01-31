import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma list_pairwise_and {α : Type} {R S : α → α → Prop} (s : List α) 
  (hR : s.Pairwise R) (hS : s.Pairwise S) : s.Pairwise (fun a b => R a b ∧ S a b) := by
  have h_main : s.Pairwise (fun a b => R a b ∧ S a b) := by
    induction' s with a as ih
    · -- Base case: empty list
      simp [List.Pairwise]
    · -- Inductive step: non-empty list
      simp_all [List.Pairwise]
      <;>
      (try
        {
          constructor
          · -- Prove the head part: for all b in as, R a b ∧ S a b
            intro b hb
            have h1 : R a b := by
              -- Extract R a b from hR
              have h2 : ∀ (b : α), b ∈ as → R a b := by
                intro b hb
                exact (hR.1 b hb)
              exact h2 b hb
            have h2 : S a b := by
              -- Extract S a b from hS
              have h3 : ∀ (b : α), b ∈ as → S a b := by
                intro b hb
                exact (hS.1 b hb)
              exact h3 b hb
            exact ⟨h1, h2⟩
          · -- Prove the tail part: as is Pairwise (R ∧ S)
            exact ih
        })
      <;>
      (try
        {
          -- Use the induction hypothesis directly
          tauto
        })
      <;>
      (try
        {
          -- Handle any remaining cases with tauto
          tauto
        })
  exact h_main