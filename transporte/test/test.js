const chai = require('chai'),
    chaiHttp = require('chai-http');
const app = require('../app.js');

chai.use(chaiHttp);

before(done => {
    console.log('-----------------------\nINICIO DE LA PRUEBA\n-------------------------');
    done();
});
after(done => {
    console.log('-----------------------\nFIN DE LA PRUEBA\n-------------------------');
    done();
});
/* Prueba asíncrona */
describe('#Prueba asíncrona para obtener direcciones', () => {
    it('Obtener listado de direcciones', done => {
        chai.request(app)
            .get('/direccion')
            .end(function (err, res) {
                if (err) done(err);
                done();
                console.log('Código de estado: %s, Cantidad de direcciones: %s', res.statusCode, res.body.length)
            });
    }).timeout(0);
});
