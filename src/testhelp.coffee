assert = require 'assert'
{flip} = require 'ramda' #auto_require:ramda
{pickRec, changedPaths} = require 'ramda-extras' #auto_require:ramda-extras

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

throws = (re, f) -> assert.throws f, re
fthrows = (f, re) -> assert.throws f, re

fit = (spec, o) ->
	paths = changedPaths spec
	subO = pickRec paths, o
	deepEq spec, subO
ffit = flip fit


#auto_export:none_
module.exports = {eq, eq_, feq, feq_, deepEq, deepEq_, fdeepEq, fdeepEq_, throws, fthrows, fit, ffit}