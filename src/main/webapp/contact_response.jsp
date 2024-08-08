<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Response</title>
    <script>
        function showMessageAndRedirect(message) {
            alert(message);
            window.location.href = 'contact.html';
        }
    </script>
</head>
<body onload="showMessageAndRedirect('<%= request.getAttribute("message") %>')">
</body>
</html>
