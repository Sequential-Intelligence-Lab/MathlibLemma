import Mathlib

theorem Finset.max'_eq_max'_image_id {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    s.max' hs = (s.image id).max' (hs.image _) := by
  -- `image id` is definitionally equal to `s`, and the nonemptiness proofs
  -- also coincide after rewriting, so `simp` closes the goal.
  simpa [Finset.image_id]