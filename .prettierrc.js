/**
 * Options · Prettier
 * https://prettier.io/docs/en/options.html
 * @type {import('prettier').Options}
 */
module.exports = {
  arrowParens: 'always',
  endOfLine: 'lf',
  singleQuote: true,
  tabWidth: 2,
  overrides: [
    {
      files: ['*.css', '*.scss', '*.yaml', '*.yml', '*.md'],
      options: {
        singleQuote: false
      }
    }
  ]
};
