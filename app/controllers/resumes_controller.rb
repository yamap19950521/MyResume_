class ResumesController < ApplicationController
    def index
        @resumes=Resume.all
    end
    def new
        @resume=Resume.new
    end
    def create
        @resume=Resume.new(resume_params)

        if @resume.save
            redirect_to resumes_path,notice:"新增成功"
        else
            flash[:notice]="資料有誤"
            render :new
        end
    end
    private
    def resume_params
        clean_params=params[:resume].permit(:title,:content,:status)
    end
end


       
