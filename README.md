A simple list of images which allows a user to drill down to the individual 
images and see the details of each picture.

All thumbnails should be 200x200 pixels.

Each image has:

   * A Picture
   * A Thumbnail
   * A Caption
   * A Description
   * Alternative Text

A user should be able to:

   * See all of the thumbnails on a page.
   * View an individual image.
      *  See the image’s picture, caption, description, and alt text in the appropriate spots.
   * Upload an image and associated metadata


# Implementation Detail

  * Rails with rspec
  * ruby version and gemset locked using .ruby-version and .ruby-gemset
  * sqlite for development environment
  * pow for development environment
  * Amazon S3 for production environment
    * use environment variables: AWS_ACCESS_KEY and AWS_SECRET_KEY


