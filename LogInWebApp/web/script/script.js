    function checkPass()
            {
                var pass1 = document.getElementById('passwordsignup');
                var pass2 = document.getElementById('passwordsignup_confirm');
                var message = document.getElementById('confirmMessage');
                var goodColor = "#66cc66";
                var badColor = "#ff6666";
                if (pass1.value == pass2.value) {
                    pass2.style.backgroundColor = goodColor;
                    message.style.color = goodColor;
                    message.innerHTML = "";
                    activateButton(terms);
                } else {
                    pass2.style.backgroundColor = badColor;
                    message.style.color = badColor;
                    message.innerHTML = "";
                    disableSubmit();
                }

            }

            function disableSubmit() {
                document.getElementById("submit").disabled = true;
                document.getElementById("log").disabled = true;
            }

            function activateButton(element) {
                if (element.checked) {
                    document.getElementById("submit").disabled = false;
                } else {
                    document.getElementById("submit").disabled = true;
                }
            }

            function activateLoginButton(element) {
                if (element.checked) {
                    document.getElementById("log").disabled = false;
                } else {
                    document.getElementById("log").disabled = true;
                }
            }