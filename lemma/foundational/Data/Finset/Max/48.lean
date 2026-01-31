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
          -- membership in the image
          refine Finset.mem_image.mpr ?_
          refine ⟨x, hx, ?_⟩
          -- The function `fun x => ofDual (toDual x)` is definitionally the identity.
          rfl) =
      OrderDual.ofDual (OrderDual.toDual (s.max' hs)) := by
  classical
  -- First, observe that the mapping is definitionally the identity on `α`.
  have hfun : (fun x : α => OrderDual.ofDual (OrderDual.toDual x)) = id := by
    funext x
    rfl
  -- Simplify the image using the fact that the function is `id`.
  have himage :
      s.image (fun x : α => OrderDual.ofDual (OrderDual.toDual x)) = s := by
    simpa [hfun] using (Finset.image_id s)
  -- Rewrite the left-hand side using this equality.
  -- The nonempty witness is compatible with this rewrite.
  -- After rewriting, the statement becomes `s.max' hs = s.max' hs`.
  simpa [himage]