assert = require 'assert'

# I define "correct" order of params as in ramda
# f... are flipped versions of a function
# ..._ are versions that will log the result before the assertion


eq = (a, b) ->
	assert.strictEqual(b, a)
eq_ = (a, b) ->
	console.log b
	assert.strictEqual(b, a)
feq = (a, b) ->
	assert.strictEqual(a, b)
feq_ = (a, b) ->
	console.log a
	assert.strictEqual(a, b)

deepEq = (a, b) ->
	assert.deepStrictEqual(b, a)
deepEq_ = (a, b) ->
	console.log b
	assert.deepStrictEqual(b, a)
fdeepEq = (a, b) ->
	assert.deepStrictEqual(a, b)
fdeepEq_ = (a, b) ->
	console.log a
	assert.deepStrictEqual(a, b)


#auto_export:none_
module.exports = {eq, eq_, feq, feq_, deepEq, deepEq_, fdeepEq, fdeepEq_}