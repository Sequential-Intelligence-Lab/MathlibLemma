import Mathlib

open OrderDual

theorem Finset.min'_map_toDual {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    ofDual ((s.image (α := α) (β := OrderDual α) toDual).min'
      (by
        -- `hs.image _` with explicit types so Lean finds the instance
        have : (s.image (α := α) (β := OrderDual α) toDual).Nonempty :=
          hs.image (f := (toDual : α → OrderDual α))
        simpa using this))
      = s.max' hs := by
  sorry