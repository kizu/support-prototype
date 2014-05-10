# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    templateData:
        site:
            browsers: ['Firefox', 'Safari', 'Opera', 'Chrome', 'IE']
            specs:
                Text:
                    CSS1:
                        name: "CSS Level 1, Text"
                        link: "http://www.w3.org/TR/REC-CSS1/#%s"
                        status: "Recommendation"
                    'CSS2.1':
                        name: "CSS Level 2 Revision 1, Text"
                        link: "http://www.w3.org/TR/CSS2/text.html#propdef-%s"
                        status: "Recommendation"
                    CSS3:
                        name: "CSS Text Level 3"
                        link: "http://dev.w3.org/csswg/css-text/#%s"
                        status: "Editor’s Draft"
                    CSS4:
                        name: "CSS Text Level 4"
                        link: "http://dev.w3.org/csswg/css-text-4/#%s"
                        status: "Editor’s Draft"

        getPreparedTitle: -> if @document.title then @document.title else @document.body.match(/^[\#]+\s*(.+)/)[1]

    collections:
        CSSproperties: ->
            @getCollection("documents").findAllLive({
                extension:'yml',
                relativeDirPath: 'css/properties'
            })
}

# Export the DocPad Configuration
module.exports = docpadConfig
