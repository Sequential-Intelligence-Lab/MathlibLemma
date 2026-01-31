import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.subset_twoPoint
    {𝕜 A : Type*} [Field 𝕜] [Ring A] [Algebra 𝕜 A]
    (a : A) (p q : 𝕜)
    (h : ∀ r ∈ spectrum 𝕜 a, r = p ∨ r = q) :
    spectrum 𝕜 a ⊆ {p, q} := by
  -- We need to show that every element in the spectrum of `a` is either `p` or `q`.
  -- This can be done by taking an arbitrary element `r` in the spectrum and showing it must be `p` or `q`.
  refine' Set.subset_def.mpr fun r hr => _
  -- By the given condition `h`, for any `r` in the spectrum, `r` must be `p` or `q`.
  cases' h r hr with hr hr <;> simp_all
  -- If `r = p`, then `r` is in the set `{p, q}`.
  -- If `r = q`, then `r` is also in the set `{p, q}`.
  -- Thus, in either case, `r` is in `{p, q}`.
  <;> simp_all