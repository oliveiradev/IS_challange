require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CoursesController, :type => :controller do

  describe "GET #index" do
    let(:course1) { create(:course) }
    let(:course2) { create(:course) }


    before(:each) do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the index template" do
      expect(response).to render_template(:index)
    end

    it "assigns all courses as @courses" do
      expect(assigns(:courses)).to eq([course1, course2])
    end
  end

  describe "GET #show" do
    let(:course) { create(:course) }

    before(:each) do
      get :show, id: course.id
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the show template" do
      expect(response).to render_template(:show)
    end

    it "assigns the requested course as @course" do
      expect(assigns(:course)).to eq(course)
    end
  end

  describe "GET #classrooms" do
    let(:course){create(:course)}

    before(:each) do
      get :classrooms
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the classrooms template" do
      expect(response).to render_template(:classrooms)
    end

    it "assigns all courses as @courses" do
      expect(assigns(:courses)).to eq([course])
    end
  end

  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the new template" do
      expect(response).to render_template(:new)
    end

    it "assigns a new course as @course" do
      expect(assigns(:course)).to be_a_new(Course)
    end
  end

  describe "POST #create" do
    before(:each) do
      post :create , course: course_attributes
    end

    context 'with valid params' do
      let(:course_attributes){attributes_for(:course)}

      it "assigns a newly created course as @course" do
        expect(assigns(:course)).to be_a(Course)
      end

      it "a new course should be persisted" do
        expect(assigns(:course)).to be_persisted
      end

      it "redirects to course listing" do
        expect(response).to redirect_to(course_path(Course.last))
      end
    end

    context "with invalid params" do
      let(:course_attributes) { attributes_for(:invalid_course) }

      it "assigns a newly created but unsaved course as @course" do
        expect(assigns(:course)).to be_a_new(Course)
      end

      it "re-renders the 'new' template" do
        expect(response).to render_template(:new)
      end
    end
  end

  describe "GET #edit" do
    let(:course) { create(:course) }

    before(:each) do
      get :edit, id: course.id
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the edit template" do
      expect(response).to render_template(:edit)
    end

    it "assigns the requested course as @course" do
      expect(assigns(:course)).to eq(course)
    end
  end

  describe "PATCH #update" do
    let(:course) { create(:course) }

    before(:each) do
      patch :update, id: course.id, course: course_attributes
    end

    context "with valid params" do
      let(:course_attributes) { attributes_for(:course) }

      it "returns http success" do
        expect(response).to redirect_to(course_path(Course.last))
      end

      it "updates the requested course" do
        course.reload
        post_update_attributes = course.attributes.inject({}){|attrs,(k,v)| attrs[k.to_sym] = v; attrs}
        post_update_attributes.delete(:id)
        post_update_attributes.delete(:created_at)
        post_update_attributes.delete(:updated_at)
        expect(course_attributes).to eq(post_update_attributes)
      end

      it "assigns the requested course as @course" do
        expect(assigns(:course)).to eq(course)
      end
    end

    context "with invalid params" do
      let(:course_attributes) { attributes_for(:invalid_course) }

      it "assigns the course as @course" do
        expect(assigns(:course)).to eq(course)
      end

      it "re-renders the 'edit' template" do
        expect(response).to render_template(:edit)
      end
    end
  end

   describe "DELETE #destroy" do
    let(:course) { create(:course) }

    before(:each) do
      delete :destroy, id: course.id
    end

    it "destroys the requested course" do
      expect(Course.exists?(course.id)).to be(false)
    end

    it "redirects to the courses list" do
      expect(response).to redirect_to(courses_path)
    end
  end
end