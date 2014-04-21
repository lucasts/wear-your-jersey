# This script get all positions of a team/modality when the
# respective select has changed.
# ============================================================ #
# The ~bind~ is setted on document element because when these
# script are run, the used elements no exists on page.

define 'activeadmin/player-form/get-positions', [], () ->

  init: () ->
    @inputSelector  = '[data-get-positions-input]'
    @outputSelector = '[data-get-positions-output]'
    $(document).on 'change', @inputSelector, $.proxy(@getCollectionToOutputSelect, @)

  getCollectionToOutputSelect: (event) ->
    $input  = $(event.target)
    $output = $(@outputSelector)
    options = [@parseTemplate("", "")]
    url     = $input
                .data("get-positions-url")
                .replace(":id", $input.val())

    $.getJSON url, (response) =>
      options.push @parseTemplate(position.id, position.title) for position in response
      $output.empty().append(options)

  parseTemplate: (value, text) ->
    return "<option value='#{value}'>#{text}</option>"
