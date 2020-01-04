<?php
/**
 * Template name:Contact page
 *
 */

get_header();
?>

<section class="contact_area bottom-border mt-5 mb-5  pb-5  pt-5">
    <div class="container">
      <div class="row ">
        <div class="col-sm-12 col-lg-12">
          <div class="contact-info">
            <h3 class="p-2 text-center">We are happy to answer your questions</h3>
            <p class="product-description">
              Before you contact us via e-mail, we recommend that you visit our Service section.
              Do you have a question regarding one of our products? Please check out the section, where you will find answers to the most frequently asked questions about our , , , and products.
              To find a service/repair center nearby, please use our .
              If you haven't found what you were looking for, please contact our local subsidiaries directly or contact Victorinox Headquarters via the contact form below.
            </p>
          </div>
          <div class="contact-form">
            <h3 class="product-title">Contact</h3>
            <?php echo do_shortcode('[contact-form-7 id="165" title="Contact form"]'); ?>
      </div>
    </div>
    </div>
    </div>
  </section>


<?php
get_footer();
