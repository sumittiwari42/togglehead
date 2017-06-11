<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>

		</div><!-- #content -->

    <!-- footer start here -->
    <footer>
      <div class="wrapper">
        <div class="footer-top cf">
          <div class="footer-part">
			       <?php if ( has_nav_menu( 'footer-first' ) ) : ?>
				        <?php
                   wp_nav_menu( array(
                      'theme_location' => 'footer-first',
                      'container_class' => 'custom-menu-class' ) );
                 ?>
			       <?php endif; ?>            
          </div>
          <div class="footer-part">
			       <?php if ( has_nav_menu( 'footer-second' ) ) : ?>
				        <?php
                   wp_nav_menu( array(
                      'theme_location' => 'footer-second',
                      'container_class' => 'custom-menu-class' ) );
                 ?>
			       <?php endif; ?>  
          </div>
          <div class="footer-part">
			       <?php if ( has_nav_menu( 'footer-third' ) ) : ?>
				        <?php
                   wp_nav_menu( array(
                      'theme_location' => 'footer-third',
                      'container_class' => 'custom-menu-class' ) );
                 ?>
			       <?php endif; ?> 
          </div>   
          <div class="footer-part">
            <h5>subscribe <span>today</span></h5>
            <form action="#" method="post">
              <input type="mail" name="mail" placeholder="enter your email id" class="input-field">
              <button type="button" class="btn"><img src="wp-content/uploads/email.png"></button>
            </form>
          </div>
        </div>  
        <!-- footer social start here -->
        <ul class="social">
          <li><a href="#" title="Facebook" target="_blank"><img src="wp-content/uploads/fb.png" alt="Facebook"></a></li>
          <li><a href="#" title="Pin" target="_blank"><img src="wp-content/uploads/pin.png" alt="Pin"></a></li>
          <li><a href="#" title="instagram" target="_blank"><img src="wp-content/uploads/insta.png" alt="instagram"></a></li>                    
        </ul>    
        <!-- footer social end here -->
        <div class="footer-text">
          <p>Currently all over products are available only on Amazon.</p>
        </div>
      </div>
      <div class="copyright">
        <p>&copy; 2017 Foodhall All Rights Reserved. Crafted by Togglehead.</p>
      </div>
    </footer>
    <!-- footer end here -->
	</div><!-- .site-content-contain -->
</div><!-- #page -->
<?php wp_footer(); ?>

</body>
</html>
