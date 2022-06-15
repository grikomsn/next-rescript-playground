/** @type {import("tailwindcss/tailwind-config").TailwindConfig} */
const tailwindConfig = {
  content: ['{hooks,pages,store,ui,utils}/**/*.{js,cjs,mjs,ts,tsx}'],
  theme: {
    extend: {},
  },
};

module.exports = tailwindConfig;
