import Mathlib

lemma deriv_iterate_succ
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (n : ℕ) (x : 𝕜)
    (hf : ∀ k ≤ n, DifferentiableAt 𝕜 (fun y => (f^[k]) y) x) :
    deriv (fun y => (f^[n.succ]) y) x =
      deriv (fun y => f (f^[n] y)) x := by
  -- Rewrite the (n+1)-th iterate as `fun y => f ((f^[n]) y)`
  -- using the standard iteration lemma.
  simpa [Function.iterate_succ_apply']