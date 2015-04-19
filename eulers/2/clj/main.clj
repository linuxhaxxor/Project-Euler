(def fib
  (memoize
    (fn [x]
      (case x
        0 0
        1 1
        (+ (fib (- x 1))
           (fib (- x 2)))))))

(defn sum-even-fibs-to [x]
  (->> (range)
       (map fib)
       (take-while (partial > x))
       (filter even?)
       (reduce +)))

(println (sum-even-fibs-to 4000000))
