import {assert, expect} from 'chai';
import Calc from '../src/calc';

describe('calc', () => {
  let calc;

  beforeEach(() => {
    calc = new Calc();
  });

  it('add', () => {
    assert(calc.add(3,4), 7);
  });

  it('del', () => {
    expect(calc.del(3,4)).to.equal(-1);
  });

})
