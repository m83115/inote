class NotesController < ApplicationController
  def index
  end

  def new
    @note = Note.new
  end

  def create
    render html: params[:note]
    note = Note.new(params[:note])
    title = params[:title]
    content = params[:content]
    note = Note.new(title: title, content: content)

    if note.save
      redirect_to "/notes"
    else
      # 待處理
    end    
  end
end
