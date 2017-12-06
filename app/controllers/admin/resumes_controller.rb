class Admin::ResumesController < Admin::BaseController
  def edit
    @resume = Resume.first || Resume.create(title: '刘祯的简历', content: '内容')
  end

  def update
    @resume = Resume.first
    if @resume.update(params.require(:resume).permit(:title, :subtitle, :content))
      flash[:notice] = '更新成功'
      redirect_to edit_admin_resume_path
    else
      flash[:notice] = '更新失败'
      render 'edit'
    end
  end
end
