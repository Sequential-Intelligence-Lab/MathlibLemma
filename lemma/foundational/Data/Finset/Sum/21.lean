import Mathlib

lemma disjSum_erase_right {α β} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t : Finset β) (b : β) :
    s.disjSum (t.erase b) = (s.disjSum t).erase (.inr b) := by
  apply Finset.ext
  intro x
  cases x with
  | inl a =>
      -- Elements coming from the left part are unaffected by erasing on the right.
      -- `simp` knows how `disjSum` behaves on `.inl` and about `mem_erase`.
      simp [Finset.mem_erase]
  | inr b' =>
      -- For right elements, erasing `b` before or after `disjSum` gives the same condition.
      -- Use `Sum.inr.inj_iff` to simplify the inequality in `mem_erase`.
      simp [Finset.mem_erase, Sum.inr.inj_iff]