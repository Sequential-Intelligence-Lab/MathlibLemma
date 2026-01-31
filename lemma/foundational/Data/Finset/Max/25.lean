import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_eq_min'_image_id {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    s.min' hs = (s.image id).min' (hs.image _) := by
  -- Use the `simp` tactic to apply the `image_id` lemma, which states that the image of a set under the identity function is the set itself.
  simp [Finset.image_id]
  -- The `simp` tactic will automatically handle the non-emptiness of the image set and establish the equality of the minima.
  <;> rfl