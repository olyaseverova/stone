<template>
  <div class="home">
    <section class="left-side none">
      <ul class="pdfs-list list">
        <li class="pdfs-list__item" v-for="pdf in pdfs" :key="pdf.id">
          <a :href="pdf.link" class="pdf-link">
            <img class="pdf-icon" src="@/img/pdf-ellipse.png" alt="Иконка PDF" />
            <p class="text">{{ pdf.name }}</p>
          </a>
        </li>
      </ul>
    </section>

    <section class="center">
      <div class="text-box">
        <button class="menu-button" type="button"></button>
        <div>
          <h1 сlass="headline-1">ПОСАДСКИЙ КАМЕНЬ</h1>
          <p class="under-headline">ПРОИЗВОДИТЕЛЬ КАЧЕСТВЕННОЙ ПЛИТКИ</p>
        </div>
        <div class="menu-wrapper" @click="openMenu">
          <div class="hamburger-menu"></div>
        </div>
      </div>

      <ul class="sections-list list">
        <li class="sections-list__item" v-for="section in sections" :key="section.id">
          <a class="section-link" @click="scrollToAnchor(section.link)">{{ section.name }}</a>
        </li>
      </ul>

      <p class="text bold text-center mb30" ref="about">Рады представить вам новый каталог
        производственного предприятия «Посадский Камень» на 2023 год!</p>
      <p class="text mb30">
        Как и прежде, главный
        приоритет нашей компании - высокое качество продукции.
        Наши изделия вырабатываются из
        высокопрочного мелкозернистого бетона. Из такого же
        бетона строят многоэтажные дома и эстакады.
        Для его производства мы используем цемент
        марки ПЦ600Д0, крупномодульный сеяный песок,
        артезианскую воду и датский пигмент OMNICON</p>

      <p class="text bold text-center mb40">Мы даем гарантию 3 года на всю продукцию!</p>

      <section class="catalog" id="catalog">
        <h3 class="h3 text-center">КАТАЛОГ</h3>
        <ul class="products-list list">
          <li class="products-list__item" v-for="product in products" :key="product.id">
            <img class="product" :src="product.src" :alt="product.alt" />
            <p class="product-name">{{ product.name }}</p>
          </li>
        </ul>
      </section>

      <section class="quality" id="quality" ref="quality">
        <h3 class="h3 text-center">ВИБРОЛИТАЯ ТРОТУАРНАЯ ПЛИТКА</h3>
        <p class="text">Вибролитье – классическая технология изготовления тротуарной плитки, проверенная 300-
          летней историей. Неоспоримыми преимуществами вибролитья являются возможность исполнения
          тротуарной плитки в самых разнообразных формах, цветовых и дизайнерских решениях, высокая
          прочность и долговечность изделий.</p>
        <p class="text">К сожалению, последние годы Россию наводнили кустарные придорожные плиточные
          производства, которые с грубейшими нарушениями лепят дешевый контрафакт. Из-за это у потребителя
          сложилось ложное мнение, что вибролитая технология хуже новомодной технологии вибропрессования.</p>
        <p class="text">
          На самом деле тротуарная плитка, изготовленная в строгом соответствии с отечественными
          ГОСТами, не только не уступает, а значительно превосходит по своим физическим свойствам
          вибропрессованные аналоги.</p>
      </section>

      <section class="portfolio" id="portfolio">
        <h3 class="h3 text-center">ПОРТФОЛИО</h3>
        <ul class="jobs-list list">
          <li class="jobs-list__item" v-for="job in jobs" :key="job.id">
            <img class="job" :src="job.src" :alt="job.alt" />
          </li>
        </ul>
      </section>

      <footer class="contacts" id="contacts" ref="contacts">
        <h3 class="h3">КОНТАКТЫ</h3>
        <p class="text-contacts">Нашу продукцию можно приобрести в следующих магазинах:</p>
        <iframe
          src="https://yandex.ru/map-widget/v1/?um=constructor%3Ae00c3f01b2f78cb537ea463edb102db4220ac7a9616c0c81078a27e6f8a4027d&amp;source=constructor"
          width="100%" height="423" frameborder="0"></iframe>
      </footer>
    </section>

    <section class="right-side">
      <button class="form-button" type="button">Позвоните мне</button>
    </section>

  </div>
</template>

<script>
export default {
  name: 'Home',

  data() {
    return {
      pdfs: [
        {
          name: "КАТАЛОГ",
        },
        {
          name: "ПРАЙС",
        },
        {
          name: "СЕРТИФИКАТЫ"
        },
        {
          name: "ТЕХНИЧЕСКИЕ УСЛОВИЯ"
        }
      ],

      sections: [
        {
          name: "О НАС",
          link: "about"
        },
        {
          name: "КАЧЕСТВО ПРОДУКЦИИ",
          link: "quality"
        },
        {
          name: "КОНТАКТЫ",
          link: "contacts"
        },
        {
          name: "ЛИЧНЫЙ КАБИНЕТ ДИЛЕРА"
        }
      ],

      products: [
        {
          src: require("@/img/брекчия.jpg"),
          alt: "Иконка брекчии",
          name: "Брекчия",
        },
        {
          src: require("@/img/шоколадка.jpg"),
          alt: "Иконка шоколадки",
          name: "Шоколадка",
        },
        {
          src: require("@/img/калифорния.jpg"),
          alt: "Иконка калифорнии",
          name: "Калифорния",
        },
        {
          src: require("@/img/галька.jpg"),
          alt: "Иконка гальки",
          name: "Галька",
        },
        {
          src: require("@/img/дощечка.jpg"),
          alt: "Иконка дощечки",
          name: "Дощечка",
        },
        {
          src: require("@/img/калифорния-дерево.jpg"),
          alt: "Иконка калифорния-дерево",
          name: "Калифорния-дерево",
        },
      ],

      jobs: [
        {
          src: require("@/img/portfolio/работа1.jpg"),
        },
        {
          src: require("@/img/portfolio/работа2.jpg"),
        },
        {
          src: require("@/img/portfolio/работа3.jpg"),
        },
        {
          src: require("@/img/portfolio/работа4.jpg"),
        },
      ],

      icons: [
        {
          src: require("@/img/parapet.png"),
          alt: "Иконка парапета",
          name: "Парапет",
        },
        {
          src: require("@/img/brus.png"),
          alt: "Иконка брусчатки",
          name: "Брусчатка",
        },
        {
          src: require("@/img/plitochka.png"),
          alt: "Иконка плитки",
          name: "Плитка",
        },
      ],
    }
  },

  methods: {
    openMenu: function () {
      let hamburger = document.querySelector(".hamburger-menu");
      let leftSide = document.querySelector(".left-side");
      hamburger.classList.toggle("animate");
      leftSide.classList.toggle("none");
    },

    scrollToAnchor: function (href) {
      this.$refs[href].scrollIntoView({ behavior: "smooth" })
    },
  },
}
</script>
