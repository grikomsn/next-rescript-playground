const bsConfig = require('./bsconfig.json');
const withTranspileModules = require('next-transpile-modules');

/** @type {import("next").NextConfig} */
let nextConfig = {
  //
};

const localModules = ['rescript', ...bsConfig['bs-dependencies']];
nextConfig = withTranspileModules(localModules)(nextConfig);

module.exports = nextConfig;
