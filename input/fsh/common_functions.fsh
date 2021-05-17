

// Add a Question in a questionnaire
/* usage:
* insert Question(,clinical-status,Clinical Status,string,false)
* insert Question(item[=].,clinical-status,Clinical Status,string,false)
*/
RuleSet: Question(context, linkId, text, type, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}



// Add a translation
/* usage:
* insert AddTranslation(item[=].item[=].answerOption[=].valueCoding.display,nl-BE,".")
*/
RuleSet: AddTranslation(context, language, content)
* {context}.extension[+].url = $translation
* {context}.extension[=].extension[0].url = "lang"
* {context}.extension[=].extension[0].valueCode = #{language}
* {context}.extension[=].extension[1].url = "content"
* {context}.extension[=].extension[1].valueString = {content}
