import { map } from "jquery";

const fade = () => {
  const categories = document.querySelector(".clinic-categories");
  const generalHospital = document.getElementById("General_Hospital");
  // const dental = document.getElementById("Dental");
  // const dermatology = document.getElementById("Dermatology");
  // const clinic = document.getElementById("Clinic");
  // const eyeDoctor = document.getElementById("Eye_doctor");
  // const ent = document.getElementById("ent");
  // const pediatrics = document.getElementById("pediatrics");
  // const plasticSurgery = document.getElementById("plastic_surgery");
  // const psychiatry = document.getElementById("psychiatry");
  // const chiropractor = document.getElementById("chiropractor");

  generalHospital.addEventListener('click', (event) => {
    console.log("test");
    clinic = document.querySelector(".Clinic");
    map = document.getElementById("map");
    categories.style.display = "none";
    clinic.style.display = "";
    map.style.display = "";

  })
}

export { fade }