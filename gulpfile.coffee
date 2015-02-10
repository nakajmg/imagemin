gulp = require "gulp"
imagemin = require "gulp-imagemin"
pngquant = require "imagemin-pngquant"

img_path = [
  "src/img/**/*"
]

gulp.task "default", =>
  gulp.src img_path
    .pipe imagemin(
      use: [pngquant()]
    )
    .pipe gulp.dest('dist')
