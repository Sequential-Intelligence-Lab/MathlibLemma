import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.rank_tr {R n} [Field R] [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    A.rank ≤ Fintype.card n := by
  have h : A.rank ≤ Fintype.card n := by
    -- Use the lemma that the rank of a matrix is at most the cardinality of its height
    have h₁ : A.rank ≤ Fintype.card n := by
      apply Matrix.rank_le_card_height
      <;>
      (try infer_instance) <;>
      (try exact inferInstance) <;>
      (try assumption) <;>
      (try simp_all) <;>
      (try aesop)
    exact h₁
  
  exact h