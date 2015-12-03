var Lab = require('lab')
var Code = require('code')
var expect = Code.expect
var lab = exports.lab = Lab.script()

lab.experiment('library', function () {
    lab.test('should create an instance of library', function (done) {
        var instance = require('../')
        expect(instance).to.be.object()
        done()
    })
})
