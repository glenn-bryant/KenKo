import { map } from "jquery";

const fade = () => {
  const categories = document.querySelector(".clinic-categories");
  const generalHospital = document.getElementById("General_Hospital");
  const dental = document.getElementById("Dental");
  const dermatology = document.getElementById("Dermatology");
  const clinic = document.getElementById("Clinic");
  const eyeDoctor = document.getElementById("Eye_doctor");
  const ent = document.getElementById("ent");
  const pediatrics = document.getElementById("pediatrics");
  const plasticSurgery = document.getElementById("plastic_surgery");
  const psychiatry = document.getElementById("psychiatry");
  const chiropractor = document.getElementById("chiropractor");
  const back = document.getElementById("return");
  const map = document.getElementById("map");
  // const markers = JSON.parse(map.dataset.markers);

  back.addEventListener('click', (event) => {
    categories.style.display = "";
    const cards = document.querySelectorAll(".card");
    cards.forEach((card) => {
      card.style.display = "none";
    });
    back.style.display = "none";
    map.style.display = "none";
  })

  generalHospital.addEventListener('click', (event) => {
    const hospitals = document.querySelectorAll(".General");
    categories.style.display = "none";
    map.style.display = "";
    hospitals.forEach((hospital) => {
      hospital.style.display = "";
    });
    back.style.display = "";
  })

  dental.addEventListener('click', (event) => {
    const dentists = document.querySelectorAll(".Dental");
    categories.style.display = "none";
    map.style.display = "";
    dentists.forEach((dentist) => {
      dentist.style.display = "";
    });
    back.style.display = "";
  })

  dermatology.addEventListener('click', (event) => {
    const dermatologists = document.querySelectorAll(".Dermatology");
    categories.style.display = "none";
    map.style.display = "";
    dermatologists.forEach((dermatologist) => {
      dermatologist.style.display = "";
    });
    back.style.display = "";
  })

  clinic.addEventListener('click', (event) => {
    const clinics = document.querySelectorAll(".Clinic");
    categories.style.display = "none";
    map.style.display = "";
    clinics.forEach((clinic) => {
      clinic.style.display = "";
    });
    back.style.display = "";
  })

  eyeDoctor.addEventListener('click', (event) => {
    const eyes = document.querySelectorAll(".Eye");
    categories.style.display = "none";
    map.style.display = "";
    eyes.forEach((eye) => {
      eye.style.display = "";
    });
    back.style.display = "";
  })

  ent.addEventListener('click', (event) => {
    const ents = document.querySelectorAll(".ear");
    categories.style.display = "none";
    map.style.display = "";
    ents.forEach((ent) => {
      ent.style.display = "";
    });
    back.style.display = "";
  })

  pediatrics.addEventListener('click', (event) => {
    const peds = document.querySelectorAll(".pediatrics");
    categories.style.display = "none";
    map.style.display = "";
    peds.forEach((ped) => {
      ped.style.display = "";
    });
    back.style.display = "";
  })

  plasticSurgery.addEventListener('click', (event) => {
    const plastics = document.querySelectorAll(".plastic");
    categories.style.display = "none";
    map.style.display = "";
    plastics.forEach((plastic) => {
      plastic.style.display = "";
    });
    back.style.display = "";
  })

  psychiatry.addEventListener('click', (event) => {
    const psychiatrists = document.querySelectorAll(".psychiatry");
    categories.style.display = "none";
    map.style.display = "";
    psychiatrists.forEach((psychiatrist) => {
      psychiatrist.style.display = "";
    });
    back.style.display = "";
  })
  
  chiropractor.addEventListener('click', (event) => {
    const chiropractors = document.querySelectorAll(".chiropractor");
    categories.style.display = "none";
    map.style.display = "";
    chiropractors.forEach((chiropractor) => {
      chiropractor.style.display = "";
    });
    back.style.display = "";
  })

}



export { fade }