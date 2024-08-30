(ns mount.core)

#_{:clj-kondo/ignore [:unused-binding]}
(defmacro defstate
  [name-sym start-kwd start-expr & args]
  `(def ~name-sym ~start-expr))