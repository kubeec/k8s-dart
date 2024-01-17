const withNextra = require("nextra")({
  theme: "nextra-theme-docs",
  themeConfig: "./theme.config.js",
});

module.exports = withNextra({
  redirects: () => {
    return [
      {
        source: "/",
        destination: "/getting-started",
        permanent: true,
      },
    ];
  },
});
