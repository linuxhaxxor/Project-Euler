(defn divis-by? [x y]
  (= (mod x y) 0))

(defn prime? [x]
  (cond
    (< x 2) false
    (= x 2) true
    (even? x) false
    (> x 2) (loop [r 3]
               (cond
                 (> (* r r) x) true
                 (divis-by? x r) false
                 :else (recur (+ r 2))))))

(defn prime-factors [x]
  (->> (range 2 (Math/floor (/ x 2)))
       (filter (partial divis-by? x))
       (filter prime?)))

(defn largest-prime-factor [x]
  (cond
    (< x 2) nil
    (prime? x) x
    :else (last (prime-factors x))))

(println (largest-prime-factor 13195))
