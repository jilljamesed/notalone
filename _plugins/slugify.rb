##
# The MIT License (MIT)
#
# Copyright (c) 2014 Ryan Morrissey
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
#
 
module Jekyll
 
  module SlugifyFilter
    ##
    # Attempts to slugify a string using
    # simple gsub regexp. This is helpful
    # when generating DOM ids or names, or
    # when needing to generate URLs.
 
    def slugify(value)
      slug = value
      # Remove single quotes from input
      slug = slug.gsub(/[']+/, '')
 
      # Replace any non-word character (\W) with a space
      slug = slug.gsub(/\W+/, ' ')
 
      # Remove any whitespace before and after the string
      slug = slug.strip
      
      # All characters should be downcased
      slug = slug.downcase
 
      # Replace spaces with dashes
      slug = slug.gsub(' ', '-')
 
      # Return the resulting slug
      slug
    end
  end
 
end
 
Liquid::Template.register_filter(Jekyll::SlugifyFilter)