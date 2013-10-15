module FfcrmEmailButton
    class EmailButtonViewHooks < FatFreeCRM::Callback::Base
        def javascript_includes(view, context = {})
            view.render(:partial => 'emails/sendgrid_js')
        end
    end
end
