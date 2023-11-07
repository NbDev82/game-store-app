<%-- 
    Document   : signIn
    Created on : Nov 2, 2023, 4:43:52 PM
    Author     : admin
--%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="css/global.css" />
    <link rel="stylesheet" href="css/signin.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,400&display=swap"
    />
  </head>
  <body>
    <div class="responsiveloginview">
      <div class="frame">
        <img
          class="backgroundpic-1-icon"
          alt=""
          src="./public/game-bg-grey-cover.png"
        />

        <div class="main-header">
          <div class="content-wrapper">
            <div class="content">
              <img class="logo-icon" alt="" src="./public/logo.svg" />

              <div class="nav-menu">
                <div class="button">
                  <div class="sub-menu">STORE</div>
                </div>
                <div class="button1">
                  <div class="sub-menu">COMMUNITY</div>
                </div>
                <div class="button2">
                  <div class="sub-menu">YOUR ACCOUNT</div>
                </div>
                <div class="button3">
                  <div class="sub-menu">CHAT</div>
                </div>
                <div class="button4">
                  <div class="sub-menu">SUPPORT</div>
                </div>
              </div>
              <div class="global-action-menu">
                <img
                  class="notification-button-icon"
                  alt=""
                  src="./public/notification-button.svg"
                />

                <div class="icon-button">
                  <img
                    class="clarityinstall-line-icon"
                    alt=""
                    src="./public/clarityinstallline.svg"
                  />

                  <div class="install-app">Install app</div>
                </div>
                <div class="value">
                  <div class="sub-menu">0đ</div>
                </div>
                <div class="user-name-link">
                  <div class="anhkhoamark">anhkhoamark</div>
                  <img
                    class="raphaelarrowdown-icon"
                    alt=""
                    src="./public/raphaelarrowdown.svg"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="login1">
          <div class="logincontainer1">
              <form class="create_new_account" action="createAcc" method="post">
                  <div id="account_form_box">
                    <div class="join_form">
                        <div class="sign_in_title">Create new account</div>
                        <div class="form_row form_row_flex account_name_row">
                            <div class="form_row_content">
                                <label for="userName">User name</label>
                                <input type="text" maxlength="255" 
                                       name="userName" value="${acc.userName}">
                            </div>
                        </div>
                        <div class="faorm_row form_row_flex">
                            <div class="form_row_content">
                                <label for="passwordHash">Password</label>
                                <input type="password" maxlength="255" 
                                       name="passwordHash" value="${acc.passwordHash}">
                            </div>
                        </div>
                            
                        <div class="form_row form_row_flex">
                            <div class="form_row_content">
                                <label for="confirmPassword">Confirm password</label>
                                <input type="password" maxlength="255" 
                                       name="confirmPassword" value="${confirmPassword}">
                            </div>
                        </div>

                        <div class="form_row">
                        <div class="verified_email">
                            <button class="submitbutton continue_button" type="submit">
                                <span>Done</span>
                            </button>
                        </div>
                    </div>
                    </div>
                </div>
              </form>
          </div>
        </div>

      </div>
      <div class="footer">
        <div class="this-is-the-footer-wrapper">
          <div class="this-is-the">This is the footer</div>
        </div>
      </div>
    </div>
  </body>
</html>

