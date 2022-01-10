class ClassPostsController < ApplicationController
  before_action :set_class_post, only: %i[ show edit update destroy ]

  # GET /class_posts or /class_posts.json
  def index
    @class_posts = ClassPost.all
  end

  # GET /class_posts/1 or /class_posts/1.json
  def show
  end

  # GET /class_posts/new
  def new
    @class_post = ClassPost.new
  end

  # GET /class_posts/1/edit
  def edit
  end

  # POST /class_posts or /class_posts.json
  def create
    @class_post = ClassPost.new(class_post_params)

    respond_to do |format|
      if @class_post.save
        format.html { redirect_to @class_post, notice: "Class post was successfully created." }
        format.json { render :show, status: :created, location: @class_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @class_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_posts/1 or /class_posts/1.json
  def update
    respond_to do |format|
      if @class_post.update(class_post_params)
        format.html { redirect_to @class_post, notice: "Class post was successfully updated." }
        format.json { render :show, status: :ok, location: @class_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @class_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_posts/1 or /class_posts/1.json
  def destroy
    @class_post.destroy
    respond_to do |format|
      format.html { redirect_to class_posts_url, notice: "Class post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_post
      @class_post = ClassPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_post_params
      params.require(:class_post).permit(:image_1, :image_2, :image_3, :title, :content)
    end
end
