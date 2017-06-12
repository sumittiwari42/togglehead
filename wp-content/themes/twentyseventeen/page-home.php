<?php
	/*
	Template Name: Home
	*/
	get_header(); 
    ?>

    <main>
      <div class="slide-wrap">
      	<ul class="slider-top">
      	  <?php
						$post_slider = array( 'post_type' => 'post', 'posts_per_page' => 3 );
						$post_list = new WP_Query( $post_slider );
						while ( $post_list->have_posts() ) : $post_list->the_post();?>
						  <li>
						    <?php the_post_thumbnail() ?>
    				    <div class="post-slide-content">
						    	<h3 class="head"> <?php the_title(); ?> </h3>
						    	<?php the_excerpt(); ?>
						    	<a class="know-more" href="<?php get_the_permalink(); ?>" title="Know More">Know More</a>
						    </div> 
						  </li>
						  <?php
						wp_reset_postdata();  
						endwhile;
					?>	
      	</ul>
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
						    	<?php the_excerpt(); ?>
						    	<p class="name"> <?php the_title(); ?> </p>
						    </div>
						  </li>
						  <?php
						wp_reset_postdata();  
						endwhile;
					?>	
      	</ul>
      </div>
      <!-- quote slider end here -->
      <!-- feature product section start here -->
      <div class="feature-products">
        <div class="wrapper">
	        <?php if( get_field('feature_product_heading') ): ?>
		      	<h2 class="heading"><?php the_field('feature_product_heading'); ?></h2>
	        <?php endif; ?>
					<?php if( get_field('feature_product_content') ): ?>
						<?php the_field('feature_product_content'); ?>
					<?php endif; ?>	   
					<ul class="tab cf">
						<?php if( get_field('feature_product_tab_1') ): ?>
							<li><?php the_field('feature_product_tab_1'); ?></li>
						<?php endif; ?>
						<?php if( get_field('feature_product_tab_2') ): ?>
							<li><?php the_field('feature_product_tab_2'); ?></li>
						<?php endif; ?>	
						<?php if( get_field('feature_product_tab_3') ): ?>
							<li><?php the_field('feature_product_tab_3'); ?></li>
						<?php endif; ?>			
						<?php if( get_field('feature_product_tab_4') ): ?>
							<li class="active"><?php the_field('feature_product_tab_4'); ?></li>
						<?php endif; ?>											
					</ul>  
					<div class="tab-details cf">
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="mixing_bowl"]')?>
	           </div>
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="pans"]')?>
	           </div>
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="spatulas"]')?>
	           </div>
	           <div class="tab-content"> 
	             <?php echo do_shortcode('[product_category category="bakery-accesories"]')?>
	           </div>	           	           	           
          </div>   
        </div>
      </div>
      <!-- feature product section end here --> 
      <!--special product -->
      <div class="special-product" style="background: url(<?php the_field('special_background_image'); ?>) no-repeat 100% 100%; background-size: 100%;">
          <div class="special-content">
	      		<?php if( get_field('special_product_heading') ): ?>
							<h3><?php the_field('special_product_heading'); ?></h3>
						<?php endif; ?>	  
	      		<?php if( get_field('special_product_text') ): ?>
							<?php the_field('special_product_text'); ?>
						<?php endif; ?>	
						<?php if( get_field('special_product_button_text') && get_field('special_product_button_url') ): ?>
							<a class="know-more" href="<?php the_field('special_product_button_url'); ?>" title="<?php the_field('special_product_button_text'); ?>"><?php the_field('special_product_button_text'); ?></a>
					<?php endif; ?>
					</div>						
      </div>
      <!--special product end here -->
      <!-- recipe section start here -->
      <div class="recipes cf">
        <div class="wrapper">
	        <?php if( get_field('recipe_heading') ): ?>
		      	<h2 class="heading"><?php the_field('recipe_heading'); ?></h2>
	        <?php endif; ?>
					<?php if( get_field('recipe_text') ): ?>
						<?php the_field('recipe_text'); ?>
					<?php endif; ?>
	      	  <?php
							$recipe = array( 'post_type' => 'recipe', 'posts_per_page' => 2 );
							$recipe_list = new WP_Query( $recipe );
							while ( $recipe_list->have_posts() ) : $recipe_list->the_post();?>
							 <div class="item">
							  <div class="img">  
							    <?php the_post_thumbnail() ?>
							  </div>
							  <div class="recipes-content">
							    <h4 class="heading"><?php the_title(); ?></h4>
							    <?php the_excerpt(); ?>
							  <?php
							  wp_reset_postdata(); 
							  ?>
								  <a href="<?php echo get_the_permalink(); ?>" title="Know More"><img src="<?php the_field('recipe_more_image'); ?>" alt="Know More"></a>
								</div>
							</div>						    
							<?php 
							endwhile;
						?>						         
        </div>
      </div>        
      <!-- recipe section start here -->
      <!-- about section start here -->
      <div class="about-us cf">
        <div class="about-part">
          <div class="about-content">      
		      <?php
		         $about = new WP_Query( 'pagename=about-us' );
		         while ( $about->have_posts() ) : $about->the_post(); ?>
		           <h2 class="heading"><?php the_title(); ?></h2>
		           <?php the_excerpt(); ?>
		           <a href="<?php echo get_the_permalink(); ?>" class="know-more" title="Know More">know more</a>
		         <?php endwhile;
		         wp_reset_postdata();
		      ?>
      		<?php if( get_field('') ): ?>
						<h3><?php the_field('special_product_text'); ?></h3>
					<?php endif; ?>
					<?php
		         $about = new WP_Query( 'pagename=locate-us' );
		         while ( $about->have_posts() ) : $about->the_post(); ?>
		           <?php the_excerpt(); ?>
		         <?php endwhile;
		         wp_reset_postdata();
		      ?>	
					<ul class="sponser-list cf">
	      	  <?php
							$partner = array( 'post_type' => 'partner', 'posts_per_page' => 4 );
							$partner_list = new WP_Query( $partner );
							while ( $partner_list->have_posts() ) : $partner_list->the_post();?>
							  <li>
							    <a href="" title="<?php the_title(); ?>"><?php the_post_thumbnail() ?></a>
							    <p class="name"> <?php the_title(); ?> </p>
							  </li>
							  <?php
							wp_reset_postdata();  
							endwhile;
						?>	
					 </ul>
					 <?php
		         $about = new WP_Query( 'pagename=locate-us' );
		         while ( $about->have_posts() ) : $about->the_post(); ?>
		           	<a href="<?php echo get_the_permalink(); ?>" class="know-more" title="Locate Us">locate us</a>
		         <?php endwhile;
		         wp_reset_postdata();
		      ?>	
					</div>			
		    </div>
		    <div class="about-part">
		      <?php
		         $about = new WP_Query( 'pagename=about-us' );
		         while ( $about->have_posts() ) : $about->the_post(); ?>
		           <?php the_post_thumbnail(); ?>
		         <?php endwhile;
		         wp_reset_postdata();
		      ?>
		    </div>
		  </div> 
		  <!-- about section end here -->
      <!-- insta feed start here -->
      <div class="insta-feed">
        <div class="insta-list cf">
          <div class="insta-content">
            <img src="../wp-content/uploads/insta1.png" alt="insta"/>
          </div>
          <div class="insta-content">
            <img src="../wp-content/uploads/insta2.jpg" alt="insta"/>
          </div>
          <div class="insta-content">
            <img src="../wp-content/uploads/insta3.jpg" alt="insta"/>
          </div>
          <div class="insta-content">
            <img src="../wp-content/uploads/insta4.png" alt="insta"/>
          </div>
        </div>
        <div class="insta-button">
          <a href="#" class="know-more" title="Follow On Instagram">Follow On Instagram</a>
        </div>
      </div>
      <!-- insta feed end here -->		     
    <main>
         
<?php
	get_footer();
?>