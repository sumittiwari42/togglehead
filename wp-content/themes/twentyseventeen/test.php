<?php
	/*
	Template Name: Test
	*/
	get_header(); 
    ?>

    <main>
       	<div class="service">
    		<div class="wrapper cf"> 
          <?php echo do_shortcode('[product_categories number="4" images="false" parent="0"]'); ?>
         </div>  
      </div> 
            <!-- quote slider start here -->
      <div class="quote-slider">
      	<ul>
      	  <?php
						$quote_slider = array( 'post_type' => 'quote', 'posts_per_page' => 3 );
						$quote_list = new WP_Query( $quote_slider );
						while ( $quote_list->have_posts() ) : $quote_list->the_post();?>
						  <li>
						    <?php the_post_thumbnail() ?>
						    <div class="quote-content">
						    	<?php the_content(); ?>
						    	<p class="name"> <?php the_title(); ?> </p>
						    </div>
						  </li>
						  <?php
						  wp_reset_postdata();
						endwhile;
					?>	
      	</ul>
      </div>
  
      <!-- feature product section start here -->
      <div class="feature-products">
        <div class="wrapper">
	        <?php if( get_field('feature_product_heading') ): ?>
		      	<h2 class="heading"><?php the_field('feature_product_heading'); ?></h2>
	        <?php endif; ?>
					<?php if( get_field('feature_product_content') ): ?>
						<p class="para"><?php the_field('feature_product_content'); ?></p>
					<?php endif; ?>	   
					<ul class="tab cf">
					<?php //if( get_field('feature_product_tab_1') ): ?>
						<li><?php echo the_field('feature_product_tab_1'); ?></li>
					<?php //endif; ?>
					<?php if( get_field('feature_product_tab_2') ): ?>
						<li><?php the_field('feature_product_tab_2'); ?></li>
					<?php endif; ?>	
					<?php if( get_field('feature_product_tab_3') ): ?>
						<li><?php the_field('feature_product_tab_3'); ?></li>
					<?php endif; ?>			
					<?php if( get_field('feature_product_tab_4') ): ?>
						<li><?php the_field('feature_product_tab_4'); ?></li>
					<?php endif; ?>											
					</ul>     
        </div>
      </div>
      <!-- feature product section end here --> 
    <main>
         
<?php
	get_footer();
?>