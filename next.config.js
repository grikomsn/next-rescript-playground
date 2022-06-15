const bsConfig = require('./bsconfig.json');
const withTranspileModules = require('next-transpile-modules');

/** @type {import("next").NextConfig} */
let nextConfig = {
  eslint: {
    ignoreDuringBuilds: Boolean(process.env.VERCEL),
  },
  reactStrictMode: true,
  typescript: {
    ignoreBuildErrors: Boolean(process.env.VERCEL),
  },
};

const localModules = ['rescript', ...bsConfig['bs-dependencies']];
nextConfig = withTranspileModules(localModules)(nextConfig);

module.exports = nextConfig;
