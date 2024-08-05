function notFound(req, res, next) {
    const error = new Error('Not Found');
    error.status = 404;
    res.status(404).render('404', { url: req.originalUrl });
    next(error);
}

module.exports = notFound;