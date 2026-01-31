import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max_eq_coe_max' {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    s.max = (s.max' hs : WithBot α) := by
  have h_main : (s.max : WithBot α) = (s.max' hs : WithBot α) := by
    -- Use the lemma `Finset.coe_max'` which directly provides the result for nonempty finite sets.
    rw [Finset.coe_max']
    <;> assumption
  
  -- Since Lean automatically inserts the coercion from `Option α` to `WithBot α` when comparing `s.max` and `(s.max' hs : WithBot α)`,
  -- the statement `s.max = (s.max' hs : WithBot α)` is interpreted as `(s.max : WithBot α) = (s.max' hs : WithBot α)`.
  -- Therefore, `h_main` directly implies the goal.
  exact_mod_cast h_main