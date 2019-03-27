module.exports = function (req, res, next) {
  res.locals.seo = {
    title: 'comnatCRM',
    keywords: 'Express、Nodejs',
    description: 'comnatCRM to study Nodejs on Web'
  }

  next();
}