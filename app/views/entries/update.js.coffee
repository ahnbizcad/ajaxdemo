$("#entry-form").slideUp(350)
$("#entries").html("<%= j(render partial: 'entries/entry', collection: @entries, as: :entry) %>")
