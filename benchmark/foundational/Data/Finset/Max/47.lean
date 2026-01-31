import Mathlib

theorem Finset.min'_map_ofDual {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    OrderDual.ofDual
        ((s.image (OrderDual.toDual : α → OrderDual α)).min'
          (hs.image (OrderDual.toDual : α → OrderDual α))) =
      s.max' hs := by
  sorry