import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.Odd.mul {N : ℕ} [NeZero N]
    {f g : ZMod N → ℂ} (hf : f.Odd) (hg : g.Odd) :
    (fun x ↦ f x * g x).Even := by
  intro x
  -- We want: f (-x) * g (-x) = f x * g x
  -- Using oddness: f (-x) = -f x, g (-x) = -g x, then (-f x) * (-g x) = f x * g x
  simpa [hf x, hg x]