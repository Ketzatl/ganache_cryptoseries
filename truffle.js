// Permet d'utiliser ES6 lors des migrations et tests
// require('babel-register');

module.exports = {
    networks: {
        ganache: {
            host: "127.0.0.1",
            port: 7545,
            network_id: "*" // Match any network id
        }
    }
};
