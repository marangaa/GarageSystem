/*Declaring variables*/
let msgerrorlogin = document.querySelector("#errorlogin");

/*Function to login (customer)*/
function loginApi() {
  sessionStorage.removeItem("token");
  sessionStorage.removeItem("id");
  let myuname = document.querySelector("#uname").value;
  let mypassword = document.querySelector("#password").value;

    fetch("http://localhost:54557/login.aspx", {
    method: "POST",
    body: JSON.stringify({
      uname: myuname,
      password: mypassword,
    }),
    headers: {
      "Content-Type": "application/json; charset=UTF-8",
    },
  })
    .then(function (response) {
      return response.json();
    })
    .then(function (data) {
      if (data.error) {
        msgerrorlogin.innerHTML = `<p>${data.error}</p>`;
      } else {
        let token = Math.random().toString(16).substring(2);
        console.log(token);
        sessionStorage.setItem("token", token);
        sessionStorage.setItem("id", data[0].id);
        window.location.href = "./index.html";
      }
    })
    .catch(function (error) {
      console.log(error);
    });
}
