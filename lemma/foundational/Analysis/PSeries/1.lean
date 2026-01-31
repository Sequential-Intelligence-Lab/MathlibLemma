import Mathlib

lemma SuccDiffBounded.add_const {C : ℕ} {u : ℕ → ℕ} (h : SuccDiffBounded C u) (c : ℕ) :
    SuccDiffBounded C (fun n => u n + c) := by
  -- Unfold the definition for both `h` and the goal
  unfold SuccDiffBounded at h ⊢
  intro n
  -- Rewrite `(fun n => u n + c)` in a form convenient for `tsub` lemmas
  have hfun : (fun n => u n + c) = fun n => c + u n := by
    funext k
    simpa [add_comm]
  -- Now simplify the goal using the fact that adding a constant cancels in differences
  -- and reduce it to the original inequality `h n`.
  simpa [hfun, add_tsub_add_eq_tsub_left, add_tsub_add_eq_tsub_right] using h n