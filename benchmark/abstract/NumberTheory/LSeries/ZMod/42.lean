import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.Even.mul {N : ℕ} [NeZero N]
    {f g : ZMod N → ℂ} (hf : f.Even) (hg : g.Even) :
    (fun x ↦ f x * g x).Even := by
  sorry
