import Mathlib

open Order

theorem Finset.max'_map_ofDual {α} [LinearOrder α]
    (s : Finset α) (hs : s.Nonempty) :
    OrderDual.ofDual
      ((s.image (OrderDual.toDual : α → OrderDual α)).max'
        (hs.image (OrderDual.toDual : α → OrderDual α))) =
      s.min' hs := by
  sorry