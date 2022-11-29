
<html>
<head>

    <title><g:message code='springSecurity.login.title'/></title>
    <asset:stylesheet src="animsition.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet type="text/css" src="bootstrap.min.css"/>
    <!--===============================================================================================-->
    <asset:stylesheet type="text/css" src="font-awesome.min.css"/>
    <!--===============================================================================================-->
    <asset:stylesheet type="text/css" src="icon-font.min.css"/>
    <!--===============================================================================================-->
    <asset:stylesheet type="text/css" src="animate.css"/>
    <!--===============================================================================================-->
    <asset:stylesheet type="text/css" src="hamburgers.min.css"/>
    <!--===============================================================================================-->
    <asset:stylesheet type="text/css" src="animsition.min.css"/>
    <!--===============================================================================================-->
    <asset:stylesheet type="text/css" src="select2.min.css"/>
    <style type="text/css" media="screen">






    /*//////////////////////////////////////////////////////////////////
    [ FONT ]*/

    @font-face {
        font-family: Poppins-Regular;

    }

    @font-face {
        font-family: Poppins-Medium;

    }

    @font-face {
        font-family: Poppins-Bold;

    }

    @font-face {
        font-family: Poppins-SemiBold;

    }

    @font-face {
        font-family: Montserrat-Bold;

    }

    @font-face {
        font-family: Montserrat-SemiBold;

    }

    @font-face {
        font-family: Montserrat-Regular;

    }


    /*//////////////////////////////////////////////////////////////////
    [ RESTYLE TAG ]*/

    * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
    }

    body, html {
        height: 100%;
        font-family: Poppins-Regular, sans-serif;
        overflow-y: hidden;
    }

    /*---------------------------------------------*/
    a {
        font-family: Poppins-Regular;
        font-size: 14px;
        line-height: 1.7;
        color: #666666;
        margin: 0px;
        transition: all 0.4s;
        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
    }

    a:focus {
        outline: none !important;
    }

    a:hover {
        text-decoration: none;
        color: #6675df;
    }

    /*---------------------------------------------*/
    h1,h2,h3,h4,h5,h6 {
        margin: 0px;
    }

    p {
        font-family: Poppins-Regular;
        font-size: 14px;
        line-height: 1.7;
        color: #666666;
        margin: 0px;
    }

    ul, li {
        margin: 0px;
        list-style-type: none;
    }


    /*---------------------------------------------*/
    input {
        outline: none;
        border: none;
    }

    textarea {
        outline: none;
        border: none;
    }

    textarea:focus, input:focus {
        border-color: transparent !important;
    }

    input:focus::-webkit-input-placeholder { color:transparent; }
    input:focus:-moz-placeholder { color:transparent; }
    input:focus::-moz-placeholder { color:transparent; }
    input:focus:-ms-input-placeholder { color:transparent; }

    textarea:focus::-webkit-input-placeholder { color:transparent; }
    textarea:focus:-moz-placeholder { color:transparent; }
    textarea:focus::-moz-placeholder { color:transparent; }
    textarea:focus:-ms-input-placeholder { color:transparent; }

    input::-webkit-input-placeholder { color: #999999;}
    input:-moz-placeholder { color: #999999;}
    input::-moz-placeholder { color: #999999;}
    input:-ms-input-placeholder { color: #999999;}

    textarea::-webkit-input-placeholder { color: #999999;}
    textarea:-moz-placeholder { color: #999999;}
    textarea::-moz-placeholder { color: #999999;}
    textarea:-ms-input-placeholder { color: #999999;}


    label {
        display: block;
        margin: 0;
    }

    /*---------------------------------------------*/
    button {
        outline: none !important;
        border: none;
        background: transparent;
    }

    button:hover {
        cursor: pointer;
    }

    iframe {
        border: none !important;
    }

    /*//////////////////////////////////////////////////////////////////
    [ utility ]*/

    /*==================================================================
    [ Text ]*/
    .txt1 {
        font-family: Montserrat-Regular;
        font-size: 13px;
        line-height: 1.4;
        color: #555555;
    }



    /*//////////////////////////////////////////////////////////////////
    [ login ]*/
    .limiter {
        width: 100%;
        margin: 0 auto;
    }

    .container-login100 {
        width: 100%;
        min-height: 100vh;
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        background: #f2f2f2;
    }


    .wrap-login100 {
        width: 100%;
        background: #fff;
        overflow: hidden;
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        flex-wrap: wrap;
        align-items: stretch;
        flex-direction: row-reverse;

    }

    /*==================================================================
    [ login more ]*/
    .login100-more {


        z-index: 1;
        height: 100%;
        align-items: center;
        text-align: center;
    }





    /*==================================================================
    [ Form ]*/

    .login100-form {
        width: 680px;
        min-height: 100vh;
        display: block;
        background-color: #f7f7f7;
        padding: 173px 55px 55px 55px;
        z-index: 2;
    }

    .login100-form-title {
        width: 100%;
        display: block;
        font-family: Poppins-Regular;
        font-size: 30px;
        color: #333333;
        line-height: 1.2;
        text-align: center;
    }



    /*------------------------------------------------------------------
    [ Input ]*/

    .wrap-input100 {

        display: flex;
        flex-wrap: wrap;
        align-items: center;
        width: 100%;
        height: 50px;
        position: relative;
        margin-bottom: 30px;

    }

    .label-input100 {
        font-family:Gill Sans, sans-serif;
        font-size: 18px;
        color: #1e1d1d;
        line-height: 1.2;

        position: relative;

        pointer-events: none;
        width: 100%;
        padding-left: 24px;
        left: 0;



    }

    .input100 {
        display: block;
        width: 100%;
        background: transparent;
        font-family: Gill Sans, sans-serif;
        font-size: 18px;
        color: #555555;
        line-height: 1.2;
        padding: 0 26px;
        border: 1px solid #e6e6e6;
        border-radius: 10px;

    }

    input.input100 {
        height: 100%;
        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        transition: all 0.4s;
    }

    /*---------------------------------------------*/

    .focus-input100 {
        position: absolute;
        display: block;
        width: calc(100% + 2px);
        height: calc(100% + 2px);
        top: -1px;
        left: -1px;
        pointer-events: none;
        border: 1px solid #6675df;
        border-radius: 10px;

        visibility: hidden;
        opacity: 0;

        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        transition: all 0.4s;

        -webkit-transform: scaleX(1.1) scaleY(1.3);
        -moz-transform: scaleX(1.1) scaleY(1.3);
        -ms-transform: scaleX(1.1) scaleY(1.3);
        -o-transform: scaleX(1.1) scaleY(1.3);
        transform: scaleX(1.1) scaleY(1.3);
    }

    .input100:focus + .focus-input100 {
        visibility: visible;
        opacity: 1;

        -webkit-transform: scale(1);
        -moz-transform: scale(1);
        -ms-transform: scale(1);
        -o-transform: scale(1);
        transform: scale(1);
    }

    .eff-focus-selection {
        visibility: visible;
        opacity: 1;

        -webkit-transform: scale(1);
        -moz-transform: scale(1);
        -ms-transform: scale(1);
        -o-transform: scale(1);
        transform: scale(1);
    }

    .input100:focus {
        height: 48px;
    }

    .input100:focus + .focus-input100 + .label-input100 {
        top: 14px;
        font-size: 13px;
    }



    .has-val + .focus-input100 + .label-input100 {
        top: 14px;
        font-size: 13px;
    }
    .has-val {
        height: 48px !important;
    }
    /*==================================================================
    [ Restyle Checkbox ]*/

    .input-checkbox100 {
        display: none;
    }

    .label-checkbox100 {
        font-family: Poppins-Regular;
        font-size: 13px;
        color: #999999;
        line-height: 1.4;

        display: block;
        position: relative;
        padding-left: 26px;
        cursor: pointer;
    }

    .label-checkbox100::before {
        content: "\f00c";
        font-family: FontAwesome;
        font-size: 13px;
        color: transparent;

        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        width: 18px;
        height: 18px;
        border-radius: 2px;
        background: #fff;
        border: 1px solid #6675df;
        left: 0;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        -o-transform: translateY(-50%);
        transform: translateY(-50%);
    }

    .input-checkbox100:checked + .label-checkbox100::before {
        color: #6675df;
    }


    /*------------------------------------------------------------------
    [ Button ]*/
    .container-login100-form-btn {
        width: 100%;
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .login100-form-btn {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 20px;
        width: 100%;
        height: 50px;
        border-radius: 10px;
        background: #6675df;

        font-family: Montserrat-Bold;
        font-size: 12px;
        color: #fff;
        line-height: 1.2;
        text-transform: uppercase;
        letter-spacing: 1px;

        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        transition: all 0.4s;
    }

    .login100-form-btn:hover {
        background: #333333;
    }



    /*------------------------------------------------------------------
    [ Responsive ]*/

    @media (max-width: 992px) {
        .login100-form {
            width: 50%;
            padding-left: 30px;
            padding-right: 30px;
        }

        .login100-more {
            width: 50%;
        }
    }

    @media (max-width: 768px) {
        .login100-form {
            width: 100%;
        }

        .login100-more {
            display: none;
        }
    }

    @media (max-width: 576px) {
        .login100-form {
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 70px;
        }
    }


    /*------------------------------------------------------------------
    [ Alert validate ]*/

    .validate-input {
        position: relative;
    }

    .alert-validate::before {
        content: attr(data-validate);
        position: absolute;
        z-index: 100;
        max-width: 70%;
        background-color: #fff;
        border: 1px solid #c80000;
        border-radius: 2px;
        padding: 4px 25px 4px 10px;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        -o-transform: translateY(-50%);
        transform: translateY(-50%);
        right: 12px;
        pointer-events: none;

        font-family: Poppins-Regular;
        color: #c80000;
        font-size: 13px;
        line-height: 1.4;
        text-align: left;

        visibility: hidden;
        opacity: 0;

        -webkit-transition: opacity 0.4s;
        -o-transition: opacity 0.4s;
        -moz-transition: opacity 0.4s;
        transition: opacity 0.4s;
    }

    .alert-validate::after {
        content: "\f12a";
        font-family: FontAwesome;
        display: block;
        position: absolute;
        z-index: 110;
        color: #c80000;
        font-size: 16px;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        -o-transform: translateY(-50%);
        transform: translateY(-50%);
        right: 18px;
    }

    .alert-validate:hover:before {
        visibility: visible;
        opacity: 1;
    }

    @media (max-width: 992px) {
        .alert-validate::before {
            visibility: visible;
            opacity: 1;
        }
    }



    /*==================================================================
    [ Social ]*/
    .login100-form-social-item {
        width: 36px;
        height: 36px;
        font-size: 18px;
        color: #fff;
        border-radius: 50%;
    }

    .login100-form-social-item:hover {
        background: #333333;
        color: #fff;
    }


    .p-t-3 {padding-top: 3px;}

    .p-b-32 {padding-bottom: 32px;}


    .w-full {width: 100%;}



    /*[ Wrap Picture ]
    -----------------------------------------------------------
    */
    .wrap-pic-w img {width: 100%;}
    .wrap-pic-max-w img {max-width: 100%;}

    /* ------------------------------------ */
    .wrap-pic-h img {height: 100%;}
    .wrap-pic-max-h img {max-height: 100%;}



    .wrap-pic-cir img {
        width: 100%;
    }



    .hov-img-zoom img{
        width: 100%;
        -webkit-transition: all 0.6s;
        -o-transition: all 0.6s;
        -moz-transition: all 0.6s;
        transition: all 0.6s;
    }
    .hov-img-zoom:hover img {
        -webkit-transform: scale(1.1);
        -moz-transform: scale(1.1);
        -ms-transform: scale(1.1);
        -o-transform: scale(1.1);
        transform: scale(1.1);
    }





    .flex-sb-m {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        justify-content: space-between;
        -ms-align-items: center;
        align-items: center;
    }

    .input100:focus {
        height: 48px;
    }

    .input100:focus + .focus-input100 + .label-input100 {
        top: 14px;
        font-size: 13px;
    }

    .has-val {
        height: 48px !important;
    }

    .has-val + .focus-input100 + .label-input100 {
        top: 14px;
        font-size: 13px;
    }
    .p-b-43 {padding-bottom: 43px;}
    </style>
</head>

<body >
<div class="limiter">
    <div class="container-login100 ">
        <div class="wrap-login100" style=" background: #E1E7EF;">

            <g:if test='${flash.message}'>
                <div class="login_message">${flash.message}</div>
            </g:if>

            <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="login100-form" class="login100-form" autocomplete="off">


                <span class="login100-form-title p-b-43">
                    Se Connecter
                </span>
                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <span class="label-input100">UserName</span>
                    <input type="text" class="input100" name="${usernameParameter ?: 'username'}" id="username" autocapitalize="none"/>

                </div>


                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <span class="label-input100">Password</span>
                    <input type="password" class="input100" name="${passwordParameter ?: 'password'}" id="password"/>


                </div>
                <div class="flex-sb-m w-full p-t-3 p-b-32">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="${rememberMeParameter ?: 'remember-me'}" >
                        <label class="label-checkbox100" for="ckb1">
                            Remember me
                        </label>
                    </div>
                    <div>
                        <a href="#" class="txt1">
                            Forgot Password?
                        </a>
                    </div>
                </div>

                <div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
                </div>
            </form>
            <div class="login100-more" >
                <asset:image src="LeCoinCoin-1.png" style="max-width: 600px; max-height: 600px"/>
            </div>


        </div>
    </div>
</div>

<script type="text/javascript">
    (function ($) {
        "use strict";


        /*==================================================================
        [ Focus Contact2 ]*/
        $('.input100').each(function(){
            $(this).on('blur', function(){
                if($(this).val().trim() != "") {
                    $(this).addClass('has-val');
                }
                else {
                    $(this).removeClass('has-val');
                }
            })
        })


        /*==================================================================
        [ Validate ]*/
        var input = $('.validate-input .input100');

        $('.validate-form').on('submit',function(){
            var check = true;

            for(var i=0; i<input.length; i++) {
                if(validate(input[i]) == false){
                    showValidate(input[i]);
                    check=false;
                }
            }

            return check;
        });


        $('.validate-form .input100').each(function(){
            $(this).focus(function(){
                hideValidate(this);
            });
        });



        function showValidate(input) {
            var thisAlert = $(input).parent();

            $(thisAlert).addClass('alert-validate');
        }

        function hideValidate(input) {
            var thisAlert = $(input).parent();

            $(thisAlert).removeClass('alert-validate');
        }


    })(jQuery);
</script>
<asset:javascript src="jquery-3.2.1.min.js"/>
<!--===============================================================================================-->
<asset:javascript src="animsition.min.js"/>
<!--===============================================================================================-->
<asset:javascript src="popper.js"/>
<asset:javascript src="bootstrap.min.js"/>
<!--===============================================================================================-->
<asset:javascript src="select2.min.js"/>
<!--===============================================================================================-->
<asset:javascript src="moment.min.js"/>
<asset:javascript src="daterangepicker.js"/>
<!--===============================================================================================-->
<asset:javascript src="countdowntime.js"/>
<!--===============================================================================================-->

</body>
</html>
