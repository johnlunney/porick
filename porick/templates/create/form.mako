<%inherit file="/base.mako"/>

<%def name="head_title()">Submit a quote</%def>

<%def name="body_content()">
    <form class="well create_new_quote" action="${h.url(controller='create', action='quote')}" method="post">
        <label>Quote text</label>
        <textarea class="input-xlarge preformatted" id="quote_body" name="quote_body" rows=10 cols=80></textarea>
        <label>Additional information, if any:</label>
        <textarea class="input-xlarge" id="notes" name="notes" rows=5 cols=80></textarea>
        <label>Tags:</label>
        <input type="text" class="input-xlarge" id="tags" name="tags" placeholder="#channel, topic, people, etc">
        <div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</%def>

