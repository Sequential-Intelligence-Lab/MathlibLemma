import Mathlib

open Finset

lemma Finset.univ_fin_eq_filter_lt (n : ℕ) :
    (Finset.univ : Finset (Fin n)) =
      ((Finset.range n).attach).map
        { toFun := fun i =>
            -- `i : (Finset.range n).attach` is a subtype with `i.1 : ℕ` and `i.2 : i.1 ∈ range n`
            -- From membership in `range n` we get `i.1 < n`, so we can form an element of `Fin n`.
            ⟨i.1, by
              have hi : i.1 < n := by
                have := i.2
                exact mem_range.1 this
              exact hi⟩
        , inj' := by
            -- injectivity of the embedding; left as a placeholder
            intro x y h
            sorry } := by
  sorry