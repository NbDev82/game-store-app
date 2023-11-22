<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="css/global.css" />
    <link rel="stylesheet" href="css/login.css" />
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
          src="./public/backgroundpic-1@2x.png"
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
            <div class="login2">
              <div style="display: flex; flex-direction: column; gap: 8px; margin: 8px 16px;">
                <div class="PrimaryHeader">Sign in</div>
              </div>
              <div class="loginformcontainer1">
                <div class="loginDialog_SideBySide">
                  <form class="loginform" action="logAcc" method="post">
                    <input type="hidden" name="action" value="login">        
                    <div class="logintextfield2">
                      <div class="logintextfieldlabel2">
                        SIGN IN WITH ACCOUNT NAME
                      </div>
                      <div style="height: 17.6px; display: block;"></div>
                      <input type="text" class="logintextfieldinput2" name="userName" value="${acc.userName}">
                    </div>
                    <div class="logintextfield3">
                      <div class="logintextfieldlabel2">
                        <div class="sign-in-with2">PASSWORD</div>
                      </div>
                      <div style="height: 17.6px; display: block;"></div>
                      <input type="password" class="logintextfieldinput2" name="passwordHash" value="${passwordHash}">
                    </div>
                    <div class="loginrememberme1">
                      <div class="CheckBoxField">
                        <input type="checkbox" name="agree_check">
                        <div class="remember_text">Remember me</div>
                      </div>
                    </div>
                    <div class="signinbuttoncontainer2">
                      <button class="submitbutton" type="submit">
                        Sign in
                      </button>
                    </div>
                    <div class="formerror1"><i>${message}</i></div>
                    <a href="*" class="textLink">
                      Help, I can't sign in
                    </a>
                  </form>
                  <div class="anotherloginmetho1">
                    <div class="anotherLoginMethodContainer">
                      <div class="highlighttext3">
                        <div class="third-party-apps1">THIRD-PARTY APPS</div>
                      </div>
                      <div class="third-party-app2">
                        <img
                          class="devicongoogle2"
                          alt=""
                          src="./public/devicongoogle1.svg"
                        />
    
                        <img
                          class="rifacebook-fill-icon2"
                          alt=""
                          src="./public/rifacebookfill1.svg"
                        />
    
                        <div class="sign-in-with2">Facebook</div>
                      </div>
                      <div class="third-party-app2">
                        <img
                          class="rifacebook-fill-icon2"
                          alt=""
                          src="./public/devicongoogle2.svg"
                        />
    
                        <img
                          class="devicongoogle2"
                          alt=""
                          src="./public/rifacebookfill1.svg"
                        />
    
                        <div class="sign-in-with2">Google</div>
                      </div>
                      <div class="highlighttext4">
                        <div class="or-using-qr1">OR USING QR CODE</div>
                      </div>
                      <img
                        class="image-7-icon1"
                        alt=""
                        src="./public/image-71@2x.png"
                      />
                      <div class="highlighttext5">
                        <div class="use-the-mobile-container1">
                          <p class="use-the-mobile-app-to1">
                            Use the <span class="mobile-app1">mobile app</span> to
                          </p>
                          <p class="use-the-mobile-app-to1">sign in via QR</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <form class="loginbottomrow1" action="logAcc" method="get">
            <input type="hidden" name="action" value="createAcc"/>
          <div class="newaccount1">
            <div class="headline1">New to GameStore?
            </div>
            <div class="blue_button">
              <button type="submit" class="submitbutton3">
                Create an account
              </button>
            </div>
          </div>
          <div class="subtext2">
            <div class="subtext3">
              <div class="its-free-and1">
                It's free and easy. Discover thousands of games to play with
                millions of new friends.
              </div>
              <a href="*" class="loginaboutlink1">
                Learn more about Game Store
              </a>
            </div>
          </div>
        </form>
      </div>
      <div class="footer">
        <div class="this-is-the-footer-wrapper">
          <div class="this-is-the">This is the footer</div>
        </div>
      </div>
    </div>
  </body>
</html>
