import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Graph.incidenceSet_diff_loopSet_eq_nonloops {G : Graph α β} (x : α) :
    G.incidenceSet x \ G.loopSet x =
      {e | G.IsNonloopAt e x} := by
  have h_subset : G.incidenceSet x \ G.loopSet x ⊆ {e | G.IsNonloopAt e x} := by
    intro e he
    have h₁ : e ∈ G.incidenceSet x := by exact he.1
    have h₂ : e ∉ G.loopSet x := by exact he.2
    have h₃ : G.IsNonloopAt e x := by sorry
    exact h₃
  
  have h_superset : {e | G.IsNonloopAt e x} ⊆ G.incidenceSet x \ G.loopSet x := by
    intro e he
    have h₁ : G.IsNonloopAt e x := by exact he
    have h₂ : e ∈ G.incidenceSet x := by sorry
    have h₃ : e ∉ G.loopSet x := by sorry
    have h₄ : e ∈ G.incidenceSet x \ G.loopSet x := by sorry
    exact h₄
  
  have h_main : G.incidenceSet x \ G.loopSet x = {e | G.IsNonloopAt e x} := by
    apply Set.Subset.antisymm
    · exact h_subset
    · exact h_superset
  exact h_main