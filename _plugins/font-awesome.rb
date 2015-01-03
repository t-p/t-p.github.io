# coding: utf-8
# jekyll-font-awesome
#
# Provides Liquid tag for convinient FontAwesome inclusion.
#
# Copyright (C) 2015 Thomas Pfeiffer (https://pfeiffer.rocks/)
#
# The MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the “Software”), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is furnished to do
# so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

module Jekyll
  module FontAwesomePlugin
    class Tag < Liquid::Tag

      LINK_TEMPLATE = '<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/%s">'

      def render context
        LINK_TEMPLATE % @markup.strip.concat("/css/font-awesome.min.css")
      end
    end
  end
end

Liquid::Template.register_tag "font_awesome", Jekyll::FontAwesomePlugin::Tag
