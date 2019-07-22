class EventModulesController < ApplicationController
  # include ::SearchIpLocation
  # include PunditResource
  #
  # respond_to :html, :js
  #
  # before_filter :authenticate_user!, except: [:index, :city_state_jobs, :featured_business_jobs, :sponsored_jobs, :nationwide_jobs]
  #
  # before_action :load_and_authorize_resource, only: []
  # after_action :verify_authorized, only: []

  def index
    # redirect_to jobs_search_index_path if current_site_country != 'US'
    # @active_section = :job_landing
    #
    # @page_description = @og_description = "Culinary Agents is the leading professional network and job-matching platform for the hospitality industry. Find your next amazing opportunity."
    # @page_keywords = "hospitality jobs, restaurant jobs, jobs by location, culinary jobs, kitchen jobs, pastry jobs, restaurant management jobs, chef jobs, browse new jobs, new restaurant jobs, new hospitality jobs, award winning restaurant jobs, award winning restaurant careers, work for james beard winners, work for michelin star restaurants, work for world 50 best restaurants"
    # @page_title = @og_title = "Search for the Best Jobs in Hospitality"
    # @og_type = "website"
    # @og_url = request.original_url
    # @og_image = "https://s3.amazonaws.com/cuag/jobs/culinaryagents_jobsearch.jpg"
    # @og_sitename = "Culinary Agents"
    #
    # @featured_city_list = Search.featured_city_job_module_mapping
    # @award_list = Search.award_job_module_mapping
    # @category_list = Search.category_job_module_mapping
    # @business_list = Search.business_type_job_module_mapping
    # @available_countries = JobRepository.available_country_codes
    #
    # # Get Sponsor Banner Ad using user's location or ip address
    # sponsor_ad_target = (user_signed_in? && current_user.geo_location.present?) ? current_user.geo_location.state_code : get_state_code_from_ip
    # banner = SponsorAd.job_landing_ads.joins(:sponsor_ad_locations).where("sponsor_ad_locations.location = ?", sponsor_ad_target).active.priority.first
    # @sponsored_banner = banner.decorate if banner.present?
    #
    # if user_signed_in? && current_user.has_option?(Option::JOB_PREFERENCE_RELOCATE) && current_user.talent_profile.talent_location_preferences.present?
    #   @relocation_city_list = Search.relocation_mapping(current_user.talent_profile.talent_location_preferences.map(&:location))
    # end
    #
    # @gigs_search = Search.new type: Job.employment_form.gig.value, radius: 20
    # @gigs_search.location = get_search_location
    # if @gigs_search.location.present?
    #   @gigs = JobRepository.search(@gigs_search)
    # end
    #
    # @search = Search.from_params params[:search] || params
    #
    # if @search.location.present?
    #   parsed_location = CA::SearchString.parse_country(@search.location)
    #   @search.country = parsed_location.country if parsed_location.country.present?
    # end
    # @search.country = current_site_country if @search.country.blank?
    # @content_wrapper_class = 'job-landing'
  end

  def

  def matched_jobs
    # talent_profile_index = current_user.profile.es_document
    # excluded_job_ids = talent_profile_index.present? ? (talent_profile_index['applied_job_ids'] + talent_profile_index['saved_job_ids'] + talent_profile_index['saved_application_job_ids']).uniq : nil
    # @matched_jobs = JobApplicant.use_index('idx_job_applicants_talent_profile_id_job_id').where(talent_profile_id: current_user.profile.id).matched.for_active_jobs.where.not(job_id: excluded_job_ids).limit(25).order("job_applicants.matched_at DESC").map { |m| m.job }
    # @matched_jobs = JobsDecorator.decorate(@matched_jobs)
    # respond_to do |format|
    #   format.js { render 'job_modules/job_module'}
    # end
  end

  def saved_jobs
    # @saved_jobs = current_user.talent_profile.job_applicant_stashes.not_expired.limit(25).order("job_applicant_stashes.expires_at").map {|s| s.job }
    # @saved_jobs = JobsDecorator.decorate(@saved_jobs)
    # respond_to do |format|
    #   format.js { render 'job_modules/job_module'}
    # end
  end

  def city_state_jobs
    # @search = Search.new
    #
    # @search.radius = 20 unless @search.radius
    #
    # @search.location = get_search_location
    # @search.country = 'US' if @search.location.blank?
    #
    # talent_profile_filter = user_signed_in? ? { talent_profile_filter: {id: current_user.profile.id, exclude_all: true} } : {}
    #
    # @city_state_jobs = JobRepository.search(@search, { per: 25 }.merge(talent_profile_filter)).to_a
    # @city_state_jobs = JobsDecorator.decorate(@city_state_jobs)
    #
    # respond_to do |format|
    #   format.js { render 'job_modules/job_module'}
    # end
  end

  def nationwide_jobs
    # search = Search.new
    # search.sort_by = 'date'
    # search.country = 'US'
    #
    # talent_profile_filter = user_signed_in? ? { talent_profile_filter: {id: current_user.profile.id, exclude_all: true} } : {}
    #
    # @nationwide_jobs = JobRepository.search(search, { per: 25 }.merge(talent_profile_filter)).to_a
    # @nationwide_jobs = JobsDecorator.decorate(@nationwide_jobs)
    #
    # respond_to do |format|
    #   format.js { render 'job_modules/job_module'}
    # end
  end

  def user_segment_jobs
    # @search = Search.new
    #
    # @search.radius = 20 unless @search.radius
    #
    # @search.location = get_search_location
    # @search.country = 'US' if @search.location.blank?
    # if current_user.user_segments.present?
    #   @search.segment_ids = current_user.user_segment_matrices.order(weight: :desc).limit(5).pluck(:segment_id)
    #   @user_segment_jobs = JobRepository.search(@search, { per: 25 }.merge({ talent_profile_filter: {id: current_user.profile.id, exclude_all: true} })).to_a
    #   @user_segment_jobs = JobsDecorator.decorate(@user_segment_jobs)
    # end
    #
    # respond_to do |format|
    #   format.js { render 'job_modules/job_module'}
    # end
  end

  def featured_business_jobs
    # @search = Search.new
    #
    # @search.radius = 75 unless @search.radius
    #
    # @search.location = get_search_location
    #
    # @mailto_url = t('views.job_landing.cta.business_featured.mailto_url', email_subject: t('views.job_landing.cta.business_featured.email_subject'), email_body: t('views.job_landing.cta.business_featured.email_body') + (user_signed_in? ? t('views.job_landing.cta.business_featured.email_body_appended', talent_profile_url: talent_profile_url(current_user.talent_profile)) : ''))
    #
    # group_ids = Group.contracted.pluck(:id) if @search.location.present?
    #
    # respond_to do |format|
    #   if group_ids.present?
    #     @search.group_ids = group_ids
    #     result = JobRepository.parse_aggregation_result(JobRepository.search_elastic_aggregation(@search))
    #     @featured_businesses = result[:groups].map { |group| Group.find_by_id(group.first) }
    #     format.js { render 'job_modules/job_module' }
    #   else
    #     format.js { render :nothing => true }
    #   end
    # end
  end

  def sponsored_jobs
    # @search = Search.new
    #
    # @search.radius = 50 unless @search.radius
    #
    # @search.location = get_search_location
    # if @search.location.present?
    #   talent_profile_filter = user_signed_in? ? { talent_profile_filter: {id: current_user.profile.id, no_applied_jobs: true} } : {}
    #   @sponsored_jobs = JobRepository.search(@search, { per: 25, boosted: true }.merge(talent_profile_filter)).to_a
    #   @sponsored_jobs = JobsDecorator.decorate(@sponsored_jobs)
    # end
    #
    # respond_to do |format|
    #   if @search.location.present?
    #     format.js { render 'job_modules/job_module'}
    #   else
    #     format.js { render :nothing => true }
    #   end
    # end
  end

  def network_sponsored_jobs
    # @search = Search.new
    #
    # @search.radius = 50 unless @search.radius
    #
    # @search.location = get_search_location
    #
    # taxonomy_ids = current_user.intent_position_taxonomies.pluck(:taxonomy_id)
    #
    # if @search.location.present? && taxonomy_ids.present?
    #   @network_sponsored_jobs = JobRepository.search(@search, { per: 25, boosted: true, position_taxonomies: taxonomy_ids }).to_a
    # end
    #
    # if !@network_sponsored_jobs.present? && @search.location.present?
    #   @network_sponsored_jobs = JobRepository.search(@search, { per: 25, boosted: true }).to_a
    # end
    #
    # @network_sponsored_jobs = JobsDecorator.decorate(@network_sponsored_jobs)
    # respond_to do |format|
    #   if @search.location.present?
    #     format.js { render 'job_modules/job_module'}
    #   else
    #     format.js { render :nothing => true }
    #   end
    # end
  end
end
