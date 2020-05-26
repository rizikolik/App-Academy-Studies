class ArtworksController < ApplicationController
   
        def index
            @user=User.find(params[:artist_id])
        @artworks=@user.artworks.all
        render @artworks
        
        end
        def show
            
            @artwork=Artwork.find(params[:id])
            render @artwork
        end
       
        def create
            @artwork=Artwork.new(artwork_params)
            if @artwork.save
                render json:@artwork
            else
                @artwork.errors.full_messages.each do |err|
                    flash[:danger] =err
                end
            end
           
        end
        def update
            @artwork = Artwork.find(params[:id])
            @artwork.update(artwork_params)
        
            render @artwork
        end
        def destroy
            @artwork=Artwork.find(params[:id])
            @artwork.destroy
            render  @artorks
        end
        
    
        private
        def artwork_params
           params.require(:artwork).permit(:title,:image_url,:artist_id)
        end
    
    
   
    
end
