<%inherit file="base.mako"/>

<%def name="custom_js()">
   <script type="text/javascript" src="/js/voting.js"></script>
</%def>

<%def name="extra_body_parameters()">onload="setupVoteClickHandlers();"</%def>

<%def name="body_content()">
    % for quote in c.quotes:
        <div class="well quote">
            <div class="votes">
                <div class="vote up" title="${h.get_score_mouseover(quote, 'up')}" data-quote_id="${quote.id}">
                    <i class="icon-circle-arrow-up"> </i>
                </div>
                <div class="score">${quote.rating}</div>
                <div class="vote down" title="${h.get_score_mouseover(quote, 'down')}" data-quote_id="${quote.id}">
                    <i class="icon-circle-arrow-down"> </i>
                </div>
            </div>
            <ul class="metadata">
                <li><a href="${h.url(controller='browse', action='view_one', ref_id=quote.id)}">${quote.submitted}</a></li>
                <li class="top_right nomargin"></li>
            </ul>
            ${self.insert_quote_body(quote)}
        </div>
    % endfor
</%def>

<%def name="insert_quote_body(quote)">
<div class="content">
    <pre>${quote.body | h}</pre>
    % if quote.notes:
        <hr>
        <h6>${quote.notes}</h6>
    % endif
</div>
% if quote.tags:
    <div class="extra_info tags">
        % for tag in quote.tags:
            <a href="${h.url(controller='browse', action='tags', tag=tag.tag)}">
                <span class="label label-important">
                    ${tag.tag}
                </span>
            </a>
        % endfor
    </div>
% endif
</%def>

