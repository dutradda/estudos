'use strict';

import gulp from 'gulp'
import sass from 'gulp-sass'
import riot from 'gulp-riot'
import concat from 'gulp-concat'
import minify from 'gulp-minify'
import minifyCss from 'gulp-minify-css'
import del from 'del'


class GulpApp {
  run() {
    gulp.src('./src/*.tag').pipe(riot())
      .pipe(concat('app.js'))
      .pipe(minify({ext:'.min.js', noSource:true}))
      .pipe(gulp.dest('./build/'))
  }

}


class GulpSass {
  run() {
    gulp.src('./src/style.scss')
      .pipe(sass().on('error', sass.logError))
      .pipe(concat('app.min.css'))
      .pipe(minifyCss())
      .pipe(gulp.dest('./build/'))
  }
}


gulp.task('app', () => {new GulpApp().run()})
gulp.task('sass', () => {new GulpSass().run()})
gulp.task('clean', () => { del('build/') })
gulp.task('build', ['app', 'sass'])
