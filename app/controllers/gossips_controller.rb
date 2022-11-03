class GossipsController < ApplicationController
    def index
    @gossip = Gossip.all

    end

    def show
    @gossip = Gossip.find(params[:id])
    @comment = @gossip.comments
    
   
    end
    def new
    @gossip = Gossip.new
      
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    end

    def create
        @gossip = Gossip.create(title: params[:gossip][:title],content: params[:gossip][:content], user_id:5)
        
        redirect_to gossips_path
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    end

    def edit
    @gossip = Gossip.find(params[:id])    
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    end

    def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(title: params[:gossip][:title],content: params[:gossip][:content], user_id:5)
    redirect_to gossips_path(params[:id])

    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
    end

    def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path(params[:id])

    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
    end
end
