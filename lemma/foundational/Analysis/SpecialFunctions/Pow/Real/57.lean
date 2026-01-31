import Mathlib

lemma Real.rpow_log_base (a x : ℝ) (ha : 0 < a) (ha1 : a ≠ 1) (hx : 0 < x) :
    a ^ (log x / log a) = x := by
  -- Step 1: show log a ≠ 0
  have hloga : log a ≠ 0 := by
    intro h
    apply ha1
    have := congrArg Real.exp h
    -- exp (log a) = a, exp 0 = 1
    simpa [Real.exp_log ha, Real.exp_zero] using this

  -- Step 2: positivity of the left-hand side
  have hapos : 0 < a ^ (log x / log a) :=
    Real.rpow_pos_of_pos ha _

  -- Step 3: compute and simplify logs
  have hlog_eq : log (a ^ (log x / log a)) = log x := by
    calc
      log (a ^ (log x / log a))
          = (log x / log a) * log a := by
              -- use log_rpow and basic algebraic simplifications
              simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using
                (Real.log_rpow ha (log x / log a))
      _ = log x := by
              -- (log x / log a) * log a = log x
              simp [div_eq_mul_inv, hloga, mul_comm, mul_left_comm, mul_assoc]

  -- Step 4: exponentiate both sides and simplify using exp_log
  have h := congrArg Real.exp hlog_eq
  -- exp (log (a ^ ...)) = a ^ ..., exp (log x) = x
  simpa [Real.exp_log hapos, Real.exp_log hx] using h