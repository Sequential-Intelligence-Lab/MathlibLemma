import Mathlib

lemma deriv_comp_id'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (x : 𝕜) :
    deriv (fun y => f y) x = deriv f x := by
  -- The functions `(fun y => f y)` and `f` are definitionally equal.
  have h : (fun y => f y) = f := rfl
  -- Apply `deriv` to both sides of the equality.
  have h' : deriv (fun y => f y) = deriv f := congrArg deriv h
  -- Evaluate both sides at `x`.
  simpa using congrArg (fun g => g x) h'