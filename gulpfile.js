var gulp = require('gulp'),
    concat = require('gulp-concat'),
    sass = require('gulp-sass'),
    babel = require('gulp-babel'),
    plumber = require('gulp-plumber');

var paths = {
  scssSource: './public/assets/styles/**/*.scss',
  scssDest: './public/assets/styles',
  jsSource: ['./public/app/app.module.js', './public/app/**/*.js'],
  jsDest: './public'
};

gulp.task('styles', function () {
  return gulp.src(paths.scssSource)
  .pipe(sass().on('error', sass.logError))
  .pipe(concat('styles.css'))
  .pipe(gulp.dest(paths.scssDest));
});

gulp.task('frontjs', function() {
  return gulp.src(paths.jsSource)
  .pipe(plumber())
  .pipe(babel({
    presets: ["es2015"]
  }))
  .pipe(concat('bundle.js'))
  .pipe(gulp.dest(paths.jsDest));
});

// gulp.task('server', () => {
//   return gulp.src(paths.jsSource)
//   .pipe(plumber())
//   .pipe(babel({
//     presets: ["es2015"]
//   }))
//   .pipe(concat('bundle.js'))
//   .pipe(gulp.dest(paths.jsDest));
// });

gulp.task('watch', function() {
  gulp.watch(paths.jsSource, ['frontjs']);
  gulp.watch(paths.scssSource, ['styles']);
});

gulp.task('default', ['watch', 'frontjs', 'styles']);
