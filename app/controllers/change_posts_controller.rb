class ChangePostsController < ApplicationController
  before_action :set_change_post, only: %i[ show edit update destroy ]

  # GET /change_posts or /change_posts.json
  def index
    @change_posts = ChangePost.all.order(created_at: "DESC")
  end

  # GET /change_posts/1 or /change_posts/1.json
  def show
  end

  # GET /change_posts/new
  def new
    @change_post = ChangePost.new
  end

  # GET /change_posts/1/edit
  def edit
  end

  # POST /change_posts or /change_posts.json
  def create
    @change_post = ChangePost.new(change_post_params)

    respond_to do |format|
      if @change_post.save
        format.html { redirect_to @change_post, notice: "Change post was successfully created." }
        format.json { render :show, status: :created, location: @change_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @change_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_posts/1 or /change_posts/1.json
  def update
    respond_to do |format|
      if @change_post.update(change_post_params)
        format.html { redirect_to @change_post, notice: "Change post was successfully updated." }
        format.json { render :show, status: :ok, location: @change_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @change_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_posts/1 or /change_posts/1.json
  def destroy
    @change_post.destroy
    respond_to do |format|
      format.html { redirect_to change_posts_url, notice: "Change post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_post
      @change_post = ChangePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_post_params
      params.require(:change_post).permit(:change_children_name,:date,:change_item,:date,
      :change_content,:time,:person,:others)
    end
end
