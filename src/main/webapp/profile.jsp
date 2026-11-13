<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%!
    // Safely display submitted information
    public String escapeHtml(String value) {
        if (value == null) {
            return "";
        }

        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#39;");
    }
%>

<%
    // Get profile information from the Servlet
    String name = escapeHtml((String) request.getAttribute("name"));
    String studentId = escapeHtml((String) request.getAttribute("studentId"));
    String programme = escapeHtml((String) request.getAttribute("programme"));
    String email = escapeHtml((String) request.getAttribute("email"));
    String hobbies = escapeHtml((String) request.getAttribute("hobbies"));
    String introduction = escapeHtml((String) request.getAttribute("introduction"));
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Profile | My Little Corner</title>

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <div class="website-container">

        <!-- WEBSITE HEADER -->
        <header class="site-header">

            <div class="header-decoration">
                ✿ ♡ ✧ ♡ ✿
            </div>

            <h1>my little corner</h1>

            <nav class="navigation">
                <a href="index.html">♡ home</a>
                <a href="#my-profile">✿ my profile</a>
            </nav>

        </header>


        <!-- CENTERED PROFILE PAGE -->
        <main class="result-container" id="my-profile">

            <!-- VINTAGE DIARY CARD -->
            <div class="diary-card">

                <div class="lace-decoration">
                    ♡ ✿ ♡ ✿ ♡ ✿ ♡
                </div>

                <div class="diary-decoration">
                    ୨୧
                </div>

                <h2>My Profile</h2>

                <div class="floral-divider">
                    ✿ ───── ♡ ───── ✿
                </div>


                <!-- SUBMITTED PROFILE INFORMATION -->
                <div class="profile-information">

                    <div class="profile-detail">
                        <span class="detail-label">♡ My Name</span>
                        <p><%= name %></p>
                    </div>

                    <div class="profile-detail">
                        <span class="detail-label">✿ Student ID</span>
                        <p><%= studentId %></p>
                    </div>

                    <div class="profile-detail">
                        <span class="detail-label">✧ Programme</span>
                        <p><%= programme %></p>
                    </div>

                    <div class="profile-detail">
                        <span class="detail-label">♡ Email Address</span>
                        <p><%= email %></p>
                    </div>

                    <div class="profile-detail">
                        <span class="detail-label">✿ My Hobbies</span>
                        <p><%= hobbies %></p>
                    </div>

                    <div class="profile-detail">
                        <span class="detail-label">
                            ♡ A Little Introduction
                        </span>
                        <p><%= introduction %></p>
                    </div>

                </div>


                <!-- BOTTOM DECORATION -->
                <div class="floral-divider">
                    ✿ ───── ♡ ───── ✿
                </div>

                <a href="index.html" class="back-button">
                    ♡ back to my little corner ♡
                </a>

                <div class="lace-decoration bottom-lace">
                    ♡ ✿ ♡ ✿ ♡ ✿ ♡
                </div>

            </div>

        </main>


        <!-- WEBSITE FOOTER -->
        <footer class="site-footer">

            <p>✿ made with love ✿</p>

            <p>CSC584 Individual Assignment 1</p>

        </footer>

    </div>

</body>
</html>
