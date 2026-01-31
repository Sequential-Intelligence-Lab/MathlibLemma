import Mathlib

lemma disjSum_cons_left {α β} (a : α) (s : Finset α) (t : Finset β) (h : a ∉ s) :
    (Finset.cons a s h).disjSum t =
      Finset.cons (.inl a) (s.disjSum t)
        (by
          -- We need `Sum.inl a ∉ s.disjSum t`.
          -- Using the characterization of membership in `disjSum`,
          -- this is equivalent to `a ∉ s`.
          simpa [h]) := by
  -- Prove equality of finsets by extensionality on elements of `Sum α β`.
  ext x
  -- Case split on whether `x` is `inl` or `inr`.
  cases x <;> simp [Finset.disjSum, h]