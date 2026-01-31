import Mathlib

open scoped Classical

open Order

-- A self-contained, compilable statement with `sorry` for the proof
theorem Finset.max'_map_toDual {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    (s.image (fun x : α => (OrderDual.ofDual (OrderDual.toDual x)))).max'
        (by
          classical
          rcases hs with ⟨x, hx⟩
          refine ⟨OrderDual.ofDual (OrderDual.toDual x), ?_⟩
          -- membership in the image; proof omitted
          sorry) =
      OrderDual.ofDual (OrderDual.toDual (s.min' hs)) := by
  -- main proof omitted
  sorry