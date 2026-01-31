import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma FractionalOperation.tt_map_const {ι : Type*} {m : ℕ}
    (ω : FractionalOperation D m) (c : D) :
    FractionalOperation.tt (ι := ι) ω (fun _ _ => c) =
      ω.map (fun g _ => g (fun _ => c)) := by
  -- Apply the extensionality principle to equate the two expressions.
  apply Eq.symm
  -- Simplify the expressions using known properties of FractionalOperation, tt, and map.
  simp [FractionalOperation.tt]
  -- Use the aesop tactic to handle any remaining straightforward proof steps.
  <;> aesop
  <;> rfl
  <;> aesop