(defn divis-by-3-or-5? [x]
  (or (= (mod x 3) 0) (= (mod x 5) 0)))

(defn sum-ints-divis-by-3-or-5-to [x]
  (->> (range x)
       (filter divis-by-3-or-5?)
       (reduce +)))

(println (sum-ints-divis-by-3-or-5-to 1000))
