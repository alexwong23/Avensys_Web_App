<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html lang="en">
    <tag:header/>
    <body>
        <tag:navbar/>
        <div class="jumbotron">
            <h1>404 Error</h1>
            <p>URL: <%= request.getAttribute("javax.servlet.forward.request_uri") %> could not be found.</p>
            <a class="btn btn-primary" href="/cafe" role="button">Return to Homepage</a>
        </div>
        <tag:footer/>
        <tag:script/>
    </body>
</html>
