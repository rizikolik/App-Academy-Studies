class ArtworksSharesController < ApplicationController

def create
    @artwork_share=ArtworkShare.new(artwork_share_params)
    if @artwork_share.save
        render @artwork_share
    else
        @artwork_share.errors.full_messages.each do |err|
            flash[:danger] =err
        end
    end
end
def destroy
end

   def artwork_share_params
    params.require(:artwork_share).permit(:viewer_id,:artwork_id)
   end
end