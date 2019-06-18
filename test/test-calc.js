import test from 'ava'
import Calc from '../src/calc'

test('test', t => {
  const calc = new Calc()
  t.is(calc.add(3, 4), 7)
  t.is(calc.del(3, 4), -1)
})
