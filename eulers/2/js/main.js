let limitedFib = function*(limit) {
  yield 0
  yield 1
  yield 1
  let prev = 1
  let curr = 1
  while (true) {
    [prev, curr] = [curr, prev + curr]
    if (curr > limit) return
    yield curr
  }
}

let fibsTo = (limit) => {
  let fibonacci = limitedFib(limit)
  let currFib = fibonacci.next().value
  let fibseq = [currFib]

  while(currFib = fibonacci.next().value)
    fibseq.push(currFib)

  return fibseq
}

let sumFibsTo4M = fibsTo(4000000).filter(x => x % 2 === 0)
                                 .reduce((x, y) => x + y, 0)

console.log(sumFibsTo4M)

