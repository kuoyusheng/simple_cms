class SubjectsController < ApplicationController
	def index
		list
		render('list')	
	end

	def list
		@subjects = Subject.order("subjects.position ASC")
		
	end

	def show
		@subject = Subject.find(params[:id])
	end

	def new
		@subject = Subject.new
		
	end

	def create
		#initiate new object
		@subject = Subject.new(params[:subject])
		#save the object
		if @subject.save
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def edit
		@subject = Subject.find(params[:id])
	end

	def update
		#Find object using from param
		@subject = Subject.find(params[:id])
		#update
		if @subject.update_attributes(params[:subject])
		redirect_to(:action => 'show', :id => @subject.id)
		else
			render('edit')
		end

	def delete
		@subject = Subject.find(params[:id])
	end
	
	def destroy
		Subject.find(params[:id]).destroy
		redirect_to(:action => 'list')
	end
	end



end

